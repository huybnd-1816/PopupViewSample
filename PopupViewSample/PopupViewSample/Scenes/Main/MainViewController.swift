//
//  ViewController.swift
//  PopupViewSample
//
//  Created by nguyen.duc.huyb on 8/8/19.
//  Copyright © 2019 nguyen.duc.huyb. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {
    @IBOutlet private weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func handleOpenButtonTapped(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "PopupViewVC") as? PopupViewVC else { return }
        vc.modalPresentationStyle = .overFullScreen
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true)
        
        vc.didSendData = { [weak self] name in
            guard let self = self else { return }
            self.nameLabel.text = name
        }
    }
}

