//
//  ViewController.swift
//  WeatherApp
//
//  Created by Lucas Newlands on 29/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    private  lazy var backgroundView: UIView = {
        let view =  UIView(frame: .zero)
        view.backgroundColor = UIColor(named: "darkBlue")
        view.layer.cornerRadius = 25
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var headerView: UIView = {
        let headerView = UIView(frame: .zero)
        headerView.backgroundColor = .white
        headerView.layer.cornerRadius = 20
        headerView.translatesAutoresizingMaskIntoConstraints = false
        return headerView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    private func setupView() {
        view.backgroundColor = UIColor(named: "darkBlue")
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(headerView)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        ])
    }

}

