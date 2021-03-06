//
//  AppListView.swift
//  AppStoreExample
//
//  Created by Francisco Valbuena on 1/5/17.
//  Copyright © 2017 Francisco Valbuena. All rights reserved.
//

import Foundation
import UIKit

protocol AppListCell: class {
    var nameLabel: UILabel? { get }
    var iconImageView: UIImageView? { get }
}

protocol AppListView: class {
    weak var listDelegate: AppListViewDelegate? { get set }
    
    func cell(atIndex: Int) -> AppListCell?
    func reloadData(animated: Bool)
}

protocol AppListViewDelegate: class {
    func numberOfCells() -> Int
    func configure(cell: AppListCell, atIndex index: Int)
    func didSelect(cell: AppListCell, atIndex index: Int)
}
