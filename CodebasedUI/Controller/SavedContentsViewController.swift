//
//  SavedContentsViewController.swift
//  CodebasedUI
//
//  Created by Minho on 1/29/24.
//

import UIKit

class SavedContentsViewController: UIViewController, ConfigurableView {
    
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    
    let dummyImageView = UIImageView()
    
    let settingButton = UIButton()
    let secondSettingButton = UIButton()

    override func viewDidLoad() {
        
        super.viewDidLoad()

        configureSubViews()
        configureView()
        configureConstraints()
        
    }
    
    func configureSubViews() {
        
        [titleLabel, subtitleLabel, dummyImageView, settingButton, secondSettingButton].forEach {
            view.addSubview($0)
        }
        
    }
    
    func configureView() {
        
        titleLabel.configureStyle(font: .boldSystemFont(ofSize: 22), text: "'나만의 자동 저장' 기능", textColor: .white, backgroundColor: .clear, alignStyle: .center, numberOfLines: 0)
        
        subtitleLabel.configureStyle(font: .systemFont(ofSize: 12), text: "취향에 맞는 영화와 시리즈를 자동으로 저장해 드립니다. 디바이스에 언제나 시청할 콘텐츠가 준비되니 지루할 틈이 없어요.", textColor: .gray, backgroundColor: .clear, alignStyle: .center, numberOfLines: 0)
        
        dummyImageView.configureStyle(image: EnumeratedImages.dummy.image, contentMode: .scaleAspectFit, isRounded: false)
        
        settingButton.configuration = .configureStyle(title: "설정하기", font: .boldSystemFont(ofSize: 16), image: nil, foregroundColor: .white, backgroundColor: .systemIndigo)
        
        secondSettingButton.configuration = .configureStyle(title: "저장 가능한 콘텐츠 살펴보기", font: .boldSystemFont(ofSize: 16), image: nil, foregroundColor: .black, backgroundColor: .white)
        
    }
    
    func configureConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(80)
            make.horizontalEdges.equalTo(view).inset(16)
            make.height.equalTo(24)
        }
        
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.horizontalEdges.equalTo(view).inset(16)
            make.height.lessThanOrEqualTo(80)
        }
        
        dummyImageView.snp.makeConstraints { make in
            make.top.equalTo(subtitleLabel.snp.bottom).offset(32)
            make.centerX.equalToSuperview()
            make.horizontalEdges.greaterThanOrEqualTo(16)
            make.height.equalTo(240)
        }
        
        settingButton.snp.makeConstraints { make in
            make.top.equalTo(dummyImageView.snp.bottom).offset(48)
            make.centerX.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(48)
            make.height.equalTo(35)
        }
        
        secondSettingButton.snp.makeConstraints { make in
            make.top.equalTo(settingButton.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
            make.horizontalEdges.equalToSuperview().inset(72)
            make.height.equalTo(32)
        }
    }
    
}
