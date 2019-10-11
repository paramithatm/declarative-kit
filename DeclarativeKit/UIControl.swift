//
//  UIControl.swift
//  DeclarativeKit
//
//  Created by Wendy Liga on 10/10/19.
//  Copyright © 2019 Wendy Liga. All rights reserved.
//

import UIKit

typealias Actions = [UIControl.Event: (_ sender: Any) -> Void]

// conform UIControl.Event to Hashable to compare event.
extension UIControl.Event: Hashable {}

extension UITouch {
    func toControlEvent() -> UIControl.Event? {
        guard let view = self.view else {
            print("UITouch.toControlEvent() Error: couldn't get the containing view. \(self)")
            return nil
        }
        let isInside = view.bounds.contains(self.location(in: view))
        let wasInside = view.bounds.contains(self.previousLocation(in: view))
        switch self.phase {
        case .began:
            if isInside {
                if self.tapCount > 1 {
                    return .touchDownRepeat
                }
                return .touchDown
            }
            print("UITouch.toControlEvent() Error: unexpected touch began outs1ide of view. \(self)")
            return nil
        case .moved:
            if isInside && wasInside {
                return .touchDragInside
            } else if isInside && !wasInside {
                return .touchDragEnter
            } else if !isInside && wasInside {
                return .touchDragExit
            } else if !isInside && !wasInside {
                return .touchDragOutside
            } else {
                print("UITouch.toControlEvent() Error: couldn't determine touch moved boundary. \(self)")
                return nil
            }
        case .ended:
            if isInside {
                return .touchUpInside
            } else {
                return.touchUpOutside
            }
        case .cancelled:
            return .touchCancel
        default:
            print("UITouch.toControlEvent() Warning: couldn't handle touch event. \(self)")
            return nil
        }
    }

}

extension UIControl {
    /// Function that conform Selector to help execute action based on event
    /// - Parameter sender: Any
    /// - Parameter event: UIControl.Event
    @objc private func selectorExecutor(_ sender: Any, forEvent event: UIEvent) {
        guard let sender = sender as? Self else {return}
        
        print(">>> inside \(UIControl.Event.touchUpInside)")
        print(">>> outside \(UIControl.Event.touchUpOutside)")
        print(">>> touchDown \(UIControl.Event.touchDown)")
        print(">>> touchCancel \(UIControl.Event.touchCancel)")
        print(">>> touchDragExit \(UIControl.Event.touchDragExit)")
        print(">>> touchDragEnter \(UIControl.Event.touchDragEnter)")
        print(">>> touchDownRepeat \(UIControl.Event.touchDownRepeat)")
        print(">>> touchDragInside \(UIControl.Event.touchDragInside)")
        print(">>> allTouchEvents \(UIControl.Event.allTouchEvents)")
        print(">>> allEditingEvents \(UIControl.Event.allEditingEvents)")
        print(">>> allEvents \(UIControl.Event.allEvents)")
        print(">>> applicationReserved \(UIControl.Event.applicationReserved)")
        print(">>> primaryActionTriggered \(UIControl.Event.primaryActionTriggered)")
        print(">>> editingDidEndOnExit \(UIControl.Event.editingDidEndOnExit)")
        print(">>> editingChanged \(UIControl.Event.editingChanged)")
        print(">>> editingDidBegin \(UIControl.Event.editingDidBegin)")
        print(">>> editingDidEnd \(UIControl.Event.editingDidEnd)")
        print(">>> systemReserved \(UIControl.Event.systemReserved)")
        print(">>> valueChanged \(UIControl.Event.valueChanged)")
        
//        print(">>> check control \(self.actions[UIControl.Event.touchUpInside])")
        print(">>> event dari sender \(sender.allControlEvents)")
        
//        let a = sender.actionsForTarg
        let action = actions(forTarget: self, forControlEvent: sender.allControlEvents)
        
        print(">>> check action: \(action)")
        
        switch sender.allControlEvents {
        case .touchUpInside:
            print(">>> 1")
        case .touchUpInside:
            print(">>> 2")
        default:
              print(">>> -1")
        }
//        guard let action = self.actions[sender.allControlEvents] else {return}
        
        
//        print(">>> event: \((sender as! Self).allControlEvents)")
                
        // execute action based on UIEvent
//        action(self)
    }
    
    /// Function to help assign target
    /// - Parameter action: Any Action
    /// - Parameter event: Event you want to trigger based on.
    private func assignTarget(action: @escaping (_ sender: Any) -> Void, event: UIControl.Event) {
        self.actions[event] = action
        
        print(">>> save actions: \(self.actions[event])")
        
        self.addTarget(self, action: #selector(selectorExecutor), for: event)
    }
    
    /// Add Action when tap (TouchUpInside) was triggered.
    /// - Parameter action: Any Action
    public func tap(_ action: @escaping (_ sender: Any) -> Void) -> Self {
        return touchUpInside(action)
    }
    
    /// Add Action when TouchUpInside was triggered.
    /// - Parameter action: Any Action
    public func touchUpInside(_ action: @escaping (_ sender: Any) -> Void) -> Self {
        self.assignTarget(action: action, event: .touchUpInside)
        
        return self
    }
    
    // Add Action when TouchUpOutside was triggered.
    /// - Parameter action: Any Action
    public func touchUpOutside(_ action: @escaping (_ sender: Any) -> Void) -> Self {
        self.assignTarget(action: action, event: .touchUpOutside)
        
        return self
    }
    
    // Add Action when touchDown was triggered.
    /// - Parameter action: Any Action
    public func touchDown(_ action: @escaping (_ sender: Any) -> Void) -> Self {
//        self.assignTarget(action: action, event: .touchDown)
        
        self.addTarget(self, action: #selector(test), for: .touchDown)
        return self
    }
    
    @objc private func test() {
        
    }
}

extension UIControl {
    private struct AssociatedKeys {
        static var actions = "actions"
    }

    private func doLocked(_ closure: () -> Void) {
        objc_sync_enter(self); defer { objc_sync_exit(self) }
        closure()
    }
    
    // add helper variable to contain actions, so it will be able to call it later
    internal var actions: Actions {
        get {
            var actions: Actions!
            doLocked {
                let lookup = objc_getAssociatedObject(self, &AssociatedKeys.actions) as? Actions
                if let lookup = lookup {
                    actions = lookup
                } else {
                    let newValue: Actions = [:]
                    self.actions = newValue
                    actions = newValue
                }
            }
            
            assert(actions != nil, "Actions is failed to be initialized")
            return actions
        }

        set {
            doLocked {
                objc_setAssociatedObject(self, &AssociatedKeys.actions, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            }
        }
    }
}


