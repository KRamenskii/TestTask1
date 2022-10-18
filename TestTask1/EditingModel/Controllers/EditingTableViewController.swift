//
//  EditingTableViewController.swift
//  TestTask1
//
//  Created by Кирилл Раменский on 19.10.2022.
//

import UIKit

final class EditingTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.identifier)
    }
    
    private func setupViews() {
        title = "Просмотр"
        view.backgroundColor = .red
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Сохранить", style: .plain, target: self, action: #selector(editingTapped))
    }
    
    @objc func editingTapped() {
        
    }
}

// MARK: - UITableViewDataSource

extension EditingTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Resources.NameFields.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.identifier, for: indexPath) as? MainTableViewCell else {
            return UITableViewCell()
        }
        let nameField = Resources.NameFields.allCases[indexPath.row].rawValue
        cell.configure(name: nameField)
        return cell
    }
}

// MARK: - UITableViewDelegate

extension EditingTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.row == 1 ? UITableView.automaticDimension : 44
    }
}
