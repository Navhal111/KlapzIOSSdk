//
//  ViewController.swift
//  BottomSheetExample
//
//  Created by Gaetano Matonti on 22/11/20.
//

import UIKit
import BottomSheet

final class KlapzController: UIViewController {
  
  private let viewModel = ViewModel()
  private let mainView = View()
  private let KlapbConfig: [String: Any]
  
  init (KlapbConfig: [String: Any]){
    self.KlapbConfig = KlapbConfig
    super.init(nibName: nil, bundle: nil)
  }
    @available(*, unavailable)
     required init?(coder: NSCoder) {
         fatalError("This class does not support NSCoder")
     }
    
  override func loadView() {
    super.loadView()
    
    view = mainView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    mainView.populateSegmentedControl(picker: \.sheetSizingStylePicker, with: viewModel.sheetSizingItems)
    mainView.populateSegmentedControl(picker: \.handleStylePicker, with: viewModel.handleStyleItems)
    
    mainView.button.addTarget(self, action: #selector(didPressButton), for: .touchUpInside)
    mainView.sheetSizingStylePicker.addTarget(self, action: #selector(didSelectSegmentedItem), for: .valueChanged)
    mainView.handleStylePicker.addTarget(self, action: #selector(didSelectSegmentedItem), for: .valueChanged)
  }
  
  @objc private func didPressButton(_ sender: UIButton) {
    let controller = BottomSheetViewController(contentView: ExampleBottomSheetView())
    controller.sheetCornerRadius = 32
    controller.sheetSizingStyle = .toSafeAreaTop
    controller.handleStyle = .outside
    controller.contentInsets = UIEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)
    present(controller, animated: true, completion: nil)
  }
  
  @objc func didSelectSegmentedItem(_ sender: UISegmentedControl) {
    if sender === mainView.sheetSizingStylePicker {
      viewModel.selectedSheetSizingStyle = viewModel.sheetSizingItems[mainView.sheetSizingStylePicker.selectedSegmentIndex].style
      return
    }
    if sender === mainView.handleStylePicker {
      viewModel.selectedHandleStyle = viewModel.handleStyleItems[mainView.handleStylePicker.selectedSegmentIndex].style
      return
    }
  }
}
