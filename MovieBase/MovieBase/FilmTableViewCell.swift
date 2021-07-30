// FilmTableViewCell.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// FilmTableViewCell-
class FilmTableViewCell: UITableViewCell {
    // MARK: View elements

    var film: FilmModel?
    let titleLabel = UILabel()
    let descriptionLabel = UILabel()
    let imageViewFilm = UIImageView()
    let cellView = UIView()

    // MARK: FilmTableViewCell methods

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        addSubview(cellView)
        cellView.addSubview(imageViewFilm)
        cellView.addSubview(titleLabel)
        cellView.addSubview(descriptionLabel)

        setupBackgroundView()
        setupImageView()
        setupTitleLabel()
        setupDescriptionLabel()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: private methods

    private func setupBackgroundView() {
        cellView.backgroundColor = .yellow
        cellView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        cellView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        cellView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        cellView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 1).isActive = true
        // cellView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    private func setupImageView() {
        imageViewFilm.image = film?.filmImage
        imageViewFilm.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25).isActive = true
        imageViewFilm.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 10).isActive = true
        imageViewFilm.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: 10).isActive = true
        imageViewFilm.leftAnchor.constraint(equalTo: cellView.leftAnchor, constant: 10).isActive = true
        // imageViewFilm.rightAnchor.constraint(equalTo: titleLabel.leftAnchor, constant: 10).isActive = true
    }

    private func setupTitleLabel() {
        titleLabel.text = film?.title
        titleLabel.leftAnchor.constraint(equalTo: imageViewFilm.rightAnchor, constant: 10).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: cellView.rightAnchor, constant: 10).isActive = true
        titleLabel.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 10).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: descriptionLabel.topAnchor, constant: 10).isActive = true
    }

    private func setupDescriptionLabel() {
        titleLabel.text = film?.description
        descriptionLabel.leftAnchor.constraint(equalTo: imageViewFilm.rightAnchor, constant: 10).isActive = true
        descriptionLabel.rightAnchor.constraint(equalTo: cellView.rightAnchor, constant: 10).isActive = true
        descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor).isActive = true
        descriptionLabel.bottomAnchor.constraint(equalTo: cellView.bottomAnchor, constant: 10).isActive = true
    }
}
