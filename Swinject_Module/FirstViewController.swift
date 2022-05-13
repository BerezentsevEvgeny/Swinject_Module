//
//  ViewController.swift
//  Swinject_Module
//
//  Created by Евгений Березенцев on 13.05.2022.
//

import Swinject


class FirstViewController: UIViewController {
    
    // Creating DIContainer
    var container: Container = {
        
        let container = Container()
        container.register(ColorProviding.self) { _ in
            return ColorProvider()
        }
        
        container.register(SecondViewController.self) { resolver in
            let viewController = SecondViewController(provider: resolver.resolve(ColorProviding.self))
            return viewController
        }
        
        return container
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonDidTapped() {
        guard let secondVC = container.resolve(SecondViewController.self) else { return }
        present(secondVC, animated: true)
    }
    

}




