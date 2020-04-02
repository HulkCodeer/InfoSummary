//
//  ViewController.swift
//  InfoSummary
//
//  Created by 박현진 on 2020/03/25.
//  Copyright © 2020 박현진. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class MainViewController: CommonViewController {

    private lazy var naviTotalView = UIView().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .red
    }
    
    private lazy var naviTitleLbl = UILabel().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "메인"
        $0.font = UIFont.systemFont(ofSize: 22)
        $0.numberOfLines = 1
        $0.textAlignment = .center
    }
    
    private lazy var naviInsertItemBtn = UIButton().then {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("더하기", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        $0.isExclusiveTouch = false
    }
    
    private lazy var summaryTableView = UITableView().then{
        $0.estimatedRowHeight = 200
        $0.rowHeight = UITableView.automaticDimension
        $0.delegate = self
        $0.dataSource = self
        $0.separatorStyle = .singleLine
        $0.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        $0.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.ReuseId)
    }
    
    override func loadView() {
        super.loadView()
               
        contentView.addSubview(naviTotalView)
        naviTotalView.snp.makeConstraints{
            $0.leading.top.trailing.equalToSuperview()
            $0.height.equalTo(55)
        }
        
        naviTotalView.addSubview(naviTitleLbl)
        naviTitleLbl.snp.makeConstraints{
            $0.leading.top.trailing.bottom.equalToSuperview()
        }
        
        naviTotalView.addSubview(naviInsertItemBtn)
        naviInsertItemBtn.snp.makeConstraints{
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.width.height.equalTo(30)
        }
        
        contentView.addSubview(summaryTableView)
        summaryTableView.snp.makeConstraints{
            $0.top.equalTo(naviTotalView.snp.bottom)
            $0.leading.trailing.bottom.equalToSuperview()            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    private func makeBind() {
        naviInsertItemBtn.rx
            .tap
            .asDriver(onErrorJustReturn: ())
            .drive(onNext: { _ in
                
            })
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.ReuseId, for: indexPath) as! MainTableViewCell
        cell.bind()
        
        return cell
    }
}

