//
//  HomeVC.swift
//  TVCast
//
//  Created by Duy Dinh on 05/04/2021.
//

import UIKit

class HomeVC: UIViewController {
    @IBOutlet private var tutorialView: UIView!
    @IBOutlet private var backgroundView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(presentTutorialVC))
        tutorialView.isUserInteractionEnabled = true
        tutorialView.addGestureRecognizer(tapGestureRecognizer)
        
        backgroundView.cornerRadius(usingCorners: [.bottomLeft, .bottomRight],
                                    cornerRadii: CGSize(width: 20, height: 20))
    }

    @objc private func presentTutorialVC() {
        let tutorialVC = TutorialVC(nibName: "TutorialVC", bundle: nil)
        self.present(tutorialVC, animated: true, completion: nil)
    }
}
