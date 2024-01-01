//
//  ViewController.swift
//  WeatherApp
//
//  Created by Lucas Newlands on 29/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    var backgroundColor: String = "darkBlue"
    var textColor: String = "primaryTextColor"
    var fontContrast: UIFont = UIFont.systemFont(ofSize: 12, weight: .semibold)
    
    private  lazy var backgroundView: UIView = {
        let view =  UIView(frame: .zero)
        view.backgroundColor = UIColor(named: backgroundColor)
        view.layer.cornerRadius = 25
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var headerView: UIView = {
        let headerView = UIView(frame: .zero)
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.backgroundColor = .white
        headerView.layer.cornerRadius = 20
        return headerView
    }()
    
    private lazy var cityTextLabel: UILabel = {
        let cityTitleLabel = UILabel()
        cityTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        cityTitleLabel.font = UIFont.systemFont(ofSize: 25)
        cityTitleLabel.text = "Brasília"
        cityTitleLabel.textAlignment = .center
        cityTitleLabel.textColor = UIColor(named: textColor)
        return cityTitleLabel
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let temperatureLabel = UILabel()
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        temperatureLabel.text = "25°C"
        temperatureLabel.textAlignment = .left
        temperatureLabel.textColor = UIColor(named: textColor)
        return temperatureLabel
    }()
    
    private lazy var weatherIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "thunder")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var humidityLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Umidade"
        label.font = fontContrast
        label.textColor = .white
        return label
    }()
    
    private lazy var humidityValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "100%"
        label.font = fontContrast
        label.textColor = .white
        return label
    }()
    
    private lazy var humidityStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [humidityLabel, humidityValueLabel])
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var windLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Vento"
        label.font = fontContrast
        label.textColor = .white
        return label
    }()
    
    private lazy var windValueLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "10Km/h"
        label.font = fontContrast
        label.textColor = .white
        return label
    }()
    
    private lazy var windStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [windLabel, windValueLabel])
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var statusStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [humidityStackView, windStackView])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 10
        stackView.backgroundColor = UIColor(named: "secondaryBackground")
        stackView.layer.cornerRadius = 10
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 12, leading: 25, bottom: 12, trailing: 25)
        return stackView
    }()
    
    private lazy var hourlyForecastLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.text = "Previsão por hora"
        label.textAlignment = .center
        label.font = fontContrast
        return label
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
        view.backgroundColor = UIColor(named: backgroundColor)
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        view.addSubview(backgroundView)
        view.addSubview(headerView)
        view.addSubview(statusStackView)
        view.addSubview(hourlyForecastLabel)
        
        headerView.addSubview(cityTextLabel)
        headerView.addSubview(temperatureLabel)
        headerView.addSubview(weatherIcon)
        
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        ])
        
        NSLayoutConstraint.activate([
            cityTextLabel.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 15),
            cityTextLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 15),
            cityTextLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -15),
            cityTextLabel.heightAnchor.constraint(equalToConstant: 20),
            //temperature label
            temperatureLabel.topAnchor.constraint(equalTo: cityTextLabel.bottomAnchor, constant: 21),
            temperatureLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 26),
            //weather icon
            weatherIcon.heightAnchor.constraint(equalToConstant: 86),
            weatherIcon.widthAnchor.constraint(equalToConstant: 86),
            weatherIcon.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -26),
            weatherIcon.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor),
            weatherIcon.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: -15)
        ])
        
        NSLayoutConstraint.activate([
            statusStackView.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 15),
            statusStackView.widthAnchor.constraint(equalToConstant: 206),
            statusStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            hourlyForecastLabel.topAnchor.constraint(equalTo: statusStackView.bottomAnchor, constant: 29),
            hourlyForecastLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 35),
            hourlyForecastLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -35),
        ])
    }
}

