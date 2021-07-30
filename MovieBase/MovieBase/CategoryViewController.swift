// CategoryViewController.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// CategoryViewController-
class CategoryViewController: UIViewController {
    // MARK: View elements

    var filmTableView = UITableView()

    // MARK: private properties

    let filmCellID = "FilmCell"
    var arrayOfFilms: [FilmModel] = []

    // MARK: CategoryViewController

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewController()
    }

    // MARK: Private methods

    private func setupViewController() {
        view.backgroundColor = .red
        title = "Films"

        setupData()
        setupTableView()
    }

    private func setupData() {
        guard let image = UIImage(systemName: "person.fill") else { return }

        arrayOfFilms.append(FilmModel(title: "Трансформеры 1", filmImage: image, description: "desc"))
        arrayOfFilms.append(FilmModel(title: "Убийство в восточном экспрессе", filmImage: image, description: "desc"))
        arrayOfFilms.append(FilmModel(title: "Достать ножи", filmImage: image, description: "desc"))
    }

    private func setupTableView() {
        filmTableView = UITableView(frame: view.bounds, style: .plain)
        filmTableView.register(FilmTableViewCell.self, forCellReuseIdentifier: filmCellID)

        filmTableView.delegate = self
        filmTableView.dataSource = self
        view.addSubview(filmTableView)
    }
}

// MARK: UITableViewDelegate, UITableViewDataSource

extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfFilms.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = filmTableView
            .dequeueReusableCell(withIdentifier: filmCellID, for: indexPath) as? FilmTableViewCell
        else { return UITableViewCell() }

        let currentItem = indexPath.row
        cell.film = arrayOfFilms[currentItem]

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}
