//
//  SearchViewController.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit

class SearchViewController: UIViewController, ConfigurableView {
    
    
    let searchBar = UISearchBar()
    
    let buttonStackView = UIStackView()
    
    let comingSoonButton = UIButton()
    let everyonesFavoriteContentButton = UIButton()
    let topTenSeriesButton = UIButton()
    
    let emptyViewMainTitleLabel = UILabel()
    let emptyViewSubtitleLabel = UILabel()
    
    let searchBarPlaceHolder = "게임, 시리즈, 영화를 검색하세요..."
    
    let emptyViewMainTitleString = "이런! 공개 예정인 작품이 없습니다."
    
    let emptyViewSubtitleString = "홈에서 지금 뜨는 콘텐츠를 확인해보세요."

    var segmentButtons: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentButtons = [comingSoonButton, everyonesFavoriteContentButton, topTenSeriesButton]
        
        configureSubViews()
        configureView()
        configureConstraints()

    }
    
    func configureSubViews() {
        
        segmentButtons.forEach {
            buttonStackView.addArrangedSubview($0)
        }
        
        [searchBar, buttonStackView, emptyViewMainTitleLabel, emptyViewSubtitleLabel].forEach {
            view.addSubview($0)
        }
        
    }
    
    func configureView() {
        
        searchBar.placeholder = searchBarPlaceHolder
        
        searchBar.searchTextField.attributedPlaceholder = NSAttributedString(string: searchBarPlaceHolder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        searchBar.searchTextField.backgroundColor = .darkGray
        searchBar.searchTextField.textColor = .white
        
        searchBar.backgroundColor = .black
        searchBar.barTintColor = .black
        
        buttonStackView.configureStyle(axis: .horizontal, alignment: .fill, distribution: .fillEqually, spacing: 16)
        
        comingSoonButton.configuration = .configureStyle(title: "공개 예정", font: .systemFont(ofSize: 12), image: EnumeratedImages.blue.image, foregroundColor: .black, backgroundColor: .white)
        
        everyonesFavoriteContentButton.configuration = .configureStyle(title: "모두의 인기 콘텐츠", font: .systemFont(ofSize: 12), image: EnumeratedImages.turquoise.image, foregroundColor: .white, backgroundColor: .black)
        
        topTenSeriesButton.configuration = .configureStyle(title: "TOP 10 시리즈", font: .systemFont(ofSize: 12), image: EnumeratedImages.pink.image, foregroundColor: .white, backgroundColor: .black)
        
        emptyViewMainTitleLabel.configureStyle(font: .boldSystemFont(ofSize: 24),text: emptyViewMainTitleString, textColor: .white, backgroundColor: .clear, alignStyle: .center, numberOfLines: 0)
        
        emptyViewSubtitleLabel.configureStyle(font: .systemFont(ofSize: 14),text: emptyViewSubtitleString, textColor: .gray, backgroundColor: .clear, alignStyle: .center, numberOfLines: 0)
        
    }
    
    func configureConstraints() {
        
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview().inset(8)
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom).offset(16)
            make.horizontalEdges.equalTo(searchBar)
            make.height.equalTo(30)
            make.horizontalEdges.equalToSuperview().inset(8)
        }
        
        emptyViewMainTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(buttonStackView.snp.bottom).offset(160)
            make.centerX.equalToSuperview()
            make.horizontalEdges.greaterThanOrEqualTo(view).inset(16)
        }
        
        emptyViewSubtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(emptyViewMainTitleLabel.snp.bottom).offset(4)
            make.centerX.equalToSuperview()
            make.horizontalEdges.greaterThanOrEqualTo(view).inset(16)
        }
    }
    
}
