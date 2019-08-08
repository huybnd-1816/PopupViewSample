//
//  PopupViewVC.swift
//  PopupViewSample
//
//  Created by nguyen.duc.huyb on 8/8/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class PopupViewVC: UIViewController {
    @IBOutlet private weak var nameTextField: UITextField!
    
    var didSendData: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleCloseButtonTapped(_ sender: Any) {
        if let name = nameTextField.text {
             didSendData?(name)
        }
        dismiss(animated: true)
    }
}
