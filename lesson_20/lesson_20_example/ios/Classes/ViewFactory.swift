//
//  ViewFactory.swift
//  lesson_20_example
//
//  Created by Ilya Virnik on 12/19/20.
//

import Foundation
import Flutter

public class ExampleViewFactory: NSObject, FlutterPlatformViewFactory {
  public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
    return ExampleView(frame, viewId: viewId, args: args)
  }
}

public class ExampleView: NSObject, FlutterPlatformView {
  let frame: CGRect
  let viewId: Int64
  
  init(_ frame: CGRect, viewId: Int64, args: Any?) {
    self.frame = frame
    self.viewId = viewId
  }
  
  public func view() -> UIView {
    let view = UIView(frame: frame)
    view.backgroundColor = UIColor.blue
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 250, height: 21))
    label.textAlignment = .center
    label.text = "Hello, I am a PlatformView"
    label.translatesAutoresizingMaskIntoConstraints = false
    label.textColor = UIColor.white
    
    view.addSubview(label)
    
    label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    return view
  }
}
