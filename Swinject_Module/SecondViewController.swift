//
//  SecondViewController.swift
//  Swinject_Module
//
//  Created by Евгений Березенцев on 13.05.2022.
//

import UIKit


class SecondViewController: UIViewController {
    
    private let provider: ColorProviding?
    
    init(provider: ColorProviding?) {
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = provider?.color ?? .black
    }
    
}

    
    

