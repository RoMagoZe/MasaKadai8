//
//  HoneydewViewController.swift
//  MasaKadai8
//
//  Created by Mina on 2023/01/09.
//

import UIKit

class HoneydewViewController: UIViewController {

    @IBOutlet private weak var numberOfLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!

    @IBAction private func changeSlider(_ sender: Any) {
        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate?.sliderValue = "\(slider.value)"
        numberOfLabel.text = "\(slider.value)"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        let delegate = UIApplication.shared.delegate as? AppDelegate
        numberOfLabel.text = delegate?.sliderValue
        delegate?.sliderPoint = slider
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        let delegate = UIApplication.shared.delegate as? AppDelegate
        delegate?.sliderPoint.value = slider.value
    }
}
