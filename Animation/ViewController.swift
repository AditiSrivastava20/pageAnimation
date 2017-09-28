//
//  ViewController.swift
//  Animation
//
//  Created by anil kumar srivastava on 9/18/17.
//  Copyright © 2017 AditiSrivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var animatebtn: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   /* override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.5, delay: 0.0, options: UIViewAnimationOptions.curveEaseOut, animations: {
            self.username.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animate(withDuration: 0.5, delay: 0.3, options: .curveEaseOut, animations: {
            self.password.constant += self.view.bounds.width
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        UIView.animateWithDuration(0.5, delay: 0.4, options: .CurveEaseOut, animations: {
            self.animatebtn.alpha = 1
        }, completion: nil)
        
    }*/

    @IBAction func animation(_ sender: Any) {
        
        UIView.animate(withDuration: 1.0, animations: {
            let animation = CATransition()
            animation.duration = 1.2
            animation.startProgress = 0.0
            animation.endProgress = 0.9
            animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
            animation.type = "pageCurl"
            animation.subtype = "fromRight"
            animation.isRemovedOnCompletion = false
            animation.fillMode = "extended"
           self.myView.layer.add(animation, forKey: "pageFlipAnimation")
          // self.myView.addSubview(self.myView!)
        })
        
        ///////////////////////////////////////////
     /*   UIView.animate(withDuration: 0.5) { () -> Void in
            
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI))
        }
        
        UIView.animate(withDuration: 0.5, delay: 0.45, options: UIViewAnimationOptions.curveEaseIn, animations: { () -> Void in
            
            self.myView.transform = CGAffineTransform(rotationAngle: CGFloat(M_PI * 4))
        }, completion: nil)*/
        //////////////////////////////////////////////////////
        
        
               ///////////////////////////////////
       /* let bounds = self.animatebtn.bounds
        UIView.animateWithDuration(1.0, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: nil, animations: {
            self.loginButton.bounds = CGRect(x: bounds.origin.x - 20, y: bounds.origin.y, width: bounds.size.width + 60, height: bounds.size.height)
            self.loginButton.enabled = false
        }, completion: nil)*/
        ////////////////////////////////////////////////////
       /* username.center.x -= view.bounds.width
       password.center.x -= view.bounds.width
    
        UIView.animate(withDuration: 0.5, delay: 0.3, options: [],animations: {
            self.username.center.x += self.view.bounds.width
        },
                       completion: nil)
        
        
        UIView.animate(withDuration: 0.8, delay: 0.8, options: [],
                       animations: {
                        self.password.center.x += self.view.bounds.width
        },
                       completion: nil
        )
        
        
        
    }*/
        ///////////////////////////////////////////////////
      /*  UIView.animate(withDuration: 1, delay:0, animations: {
            //top
            self.password.frame.origin.y = self.password.frame.origin.y - 100
        }, completion: {completion in
            UIView.animate(withDuration: 1, delay:0, animations: {
                //left
                self.password.frame.origin.x = self.password.frame.origin.x - 100
                
            }, completion: {completion in
                UIView.animate(withDuration: 1, delay:0, animations: {
                    //bottom
                    self.password.frame.origin.y = self.password.frame.origin.y + 100
                    
                }, completion: {completion in
                    UIView.animate(withDuration: 1, delay:0, animations: {                        //right
                        self.password.frame.origin.x = self.password.frame.origin.x + 100
                    }, completion: {completion in
                        
                        
                    })
                })
            })
            
        })

    }*/
/////////////////////////////////////////////////////
}
}
