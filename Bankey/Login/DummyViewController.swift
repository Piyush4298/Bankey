//
//  DummyViewController.swift
//  Bankey
//
//  Created by Piyush Pandey on 01/01/25.
//

import UIKit

class DummyViewController: UIViewController {

    private let stackView = UIStackView()
    private let label =  UILabel()
    private let logoutButton = UIButton(type: .system)
    weak var logoutDelegate: LogoutViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
    
    private func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .title1)
        label.text = "Welcome"
        
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.setTitle("Logout", for: .normal)
        logoutButton.configuration = .filled()
        logoutButton.addTarget(self, action: #selector(logoutTapped), for: .primaryActionTriggered)
    }
    
    private func layout() {
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(logoutButton)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

extension DummyViewController {
    @objc func logoutTapped(_ sender: UIButton) {
        print("Log out tapped")
        logoutDelegate?.didLogout()
    }
}
