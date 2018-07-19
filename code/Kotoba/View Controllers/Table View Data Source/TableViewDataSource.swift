//
//  TableViewDataSource.swift
//  Kotoba
//
//  Created by Gabor Halasz on 19/07/2018.
//  Copyright © 2018 Will Hains. All rights reserved.
//

import UIKit
import CoreData

protocol TableViewDataSourceDelegate: class {
  func cellIdentifier(for indexPath: IndexPath) -> String
  func configure(cell: UITableViewCell,
                 with object: NSFetchRequestResult,
                 at indexPath: IndexPath)
}

protocol TableViewDataSource: UITableViewDataSource {
  init(request: NSFetchRequest<NSFetchRequestResult>,
       context: NSManagedObjectContext,
       tableView: UITableView,
       delegate: TableViewDataSourceDelegate)
}