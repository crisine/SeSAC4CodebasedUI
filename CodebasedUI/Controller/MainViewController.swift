//
//  MainViewController.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit
import SnapKit

class MainViewController: UIViewController, ConfigurableView {
    
    let mainImageView = UIImageView()
    
    let buttonStackView = UIStackView()
    
    let playButton = UIButton()
    let addToListButton = UIButton()
    
    let whatsUpNowLabel = UILabel()
    let whatsUpNowStackView = UIStackView()
    
    let whatsUpFirstImageView = UIImageView()
    let whatsUpSecondImageView = UIImageView()
    let whatsUpThirdImageView = UIImageView()
    
    
    
    let movieImageFileString = ["극한직업", "도둑들", "명량", "베테랑", "부산행", "신과함께인과연", "신과함께죄와벌", "아바타", "알라딘", "암살", "어벤져스엔드게임", "왕의남자", "태극기휘날리며", "택시운전사", "해운대"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSubViews()
        configureView()
        configureConstraints()
        
        playButton.addTarget(self, action: #selector(didPlayButtonTapped), for: .touchUpInside)
    }
    
    @objc
    func didPlayButtonTapped(_ sender: UIButton) {
        [mainImageView, whatsUpFirstImageView, whatsUpSecondImageView, whatsUpThirdImageView].forEach {
            $0.image = pickRandomImage()
        }
    }
    
    func pickRandomImage() -> UIImage {
        
        let image = UIImage(named: movieImageFileString.randomElement() ?? "star") ?? UIImage(systemName: "star")!
        
        return image
    }
    
    func configureSubViews() {
        
        [whatsUpFirstImageView, whatsUpSecondImageView, whatsUpThirdImageView].forEach {
            whatsUpNowStackView.addArrangedSubview($0)
        }
        
        [playButton, addToListButton].forEach {
            buttonStackView.addArrangedSubview($0)
        }
        
        [mainImageView, whatsUpNowStackView, buttonStackView].forEach {
            view.addSubview($0)
        }
        
        view.addSubview(whatsUpNowLabel)
    }
    
    func configureView() {
        
        mainImageView.configureStyle(image: pickRandomImage(), contentMode: .scaleAspectFill, isRounded: true)
        
        buttonStackView.configureStyle(axis: .horizontal, alignment: .fill, distribution: .fillEqually, spacing: 16)
        
        playButton.configuration = .configureStyle(title: "재생", font: .boldSystemFont(ofSize: 14), image: EnumeratedImages.playFill.image, foregroundColor: .black, backgroundColor: .white)
        addToListButton.configuration = .configureStyle(title: "내가 찜한 리스트", font: .boldSystemFont(ofSize: 14), image: EnumeratedImages.plus.image, foregroundColor: .white, backgroundColor: .gray)
        
        
        whatsUpNowLabel.text = "지금 뜨는 콘텐츠"
        whatsUpNowLabel.textColor = .white
        whatsUpNowLabel.font = .boldSystemFont(ofSize: 18)
        
        whatsUpNowStackView.configureStyle(axis: .horizontal, alignment: .fill, distribution: .fillEqually, spacing: 8)
        
        whatsUpFirstImageView.configureStyle(image: pickRandomImage(), contentMode: .scaleAspectFit, isRounded: true)
        whatsUpSecondImageView.configureStyle(image: pickRandomImage(), contentMode: .scaleAspectFit, isRounded: true)
        whatsUpThirdImageView.configureStyle(image: pickRandomImage(), contentMode: .scaleAspectFit, isRounded: true)
        
    }
    
    func configureConstraints() {
        
        mainImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(8)
            make.horizontalEdges.equalToSuperview().inset(16)
            make.height.equalTo(UIScreen.main.bounds.height * 0.5)
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.horizontalEdges.bottom.equalTo(mainImageView).inset(16)
            make.height.equalTo(32)
        }
        
        whatsUpNowLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom).offset(8)
            make.leading.equalTo(mainImageView.snp.leading)
        }
        
        whatsUpNowStackView.snp.makeConstraints { make in
            make.top.equalTo(whatsUpNowLabel.snp.bottom).offset(4)
            make.horizontalEdges.equalToSuperview().inset(16)
            make.height.equalTo(180)
        }
    }
}
