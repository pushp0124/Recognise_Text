//
//  ViewController.swift
//  RecogniseText
//
//  Created by Push_Parn on 25/04/18.
//  Copyright © 2018 Push_Parn. All rights reserved.
//

import UIKit
import TesseractOCR

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate ,G8TesseractDelegate{

    @IBOutlet weak var myTextView: UITextView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ChooseImage(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        let myActionsheet = UIAlertController(title: "Pick Your Image Source", message: "Choose", preferredStyle: .actionSheet)
        myActionsheet.addAction(UIAlertAction(title: "Photo Gallery", style: .default, handler: { (action:UIAlertAction) in
            imagePicker.sourceType = .photoLibrary
            self.present(imagePicker, animated: true, completion:nil)
        }))
        myActionsheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
            if UIImagePickerController.isSourceTypeAvailable(.camera){
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true, completion:nil)
            }
            else{
                print("Please Add Your Camera")
            }
            
        }))
        
        myActionsheet.addAction(UIAlertAction(title: "Cancel", style: .default
            , handler: { (action:UIAlertAction) in
                print("No Pick")
        }))
        self.present(myActionsheet, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
      
        let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        
        if let tesseractObject = G8Tesseract(language:"eng"){
            tesseractObject.delegate = self
            tesseractObject.image = image?.g8_blackAndWhite()
            tesseractObject.recognize()
           myTextView.text = tesseractObject.recognizedText
        }
        picker.dismiss(animated: true, completion: nil)
        
    }
     func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
                picker.dismiss(animated: true, completion: nil)
        myTextView.text = "Select Your Image"
    }
func progressImageRecognition(for tesseract: G8Tesseract!) {
    
        print(tesseract.progress)
    }
    
}

