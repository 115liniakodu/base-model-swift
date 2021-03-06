//
//  MBFBaseManager.swift
//  MelonBaseModel
//
//  Created by Tomasz Popis on 17/02/16.
//  Copyright © 2016 Melon. All rights reserved.
//

import Foundation

public protocol MBFActionCompletionProtocol: class {
  func action(success: Bool, type: UInt?, message: Any?)
}

open class MBFBaseManager {
  
  open weak var actionCompletionDelegate: MBFActionCompletionProtocol?
  
  //open var dataParser: MBFDataParserProtocol?
  
  public init() {}
  
  public static var isIPhone: Bool {
    
    return (UIDevice.current.userInterfaceIdiom == .phone)
  }
  
  public static var isIPad: Bool {
    
    return (UIDevice.current.userInterfaceIdiom == .pad)
  }
  
  public static var isTv: Bool {
    
    return UIDevice.current.userInterfaceIdiom == .tv
  }
  
  public static var isIPhone3_5Inch: Bool {
    
    return (UIScreen.main.bounds.size.height == 480)
  }
  
  public static var isIPhone4Inch: Bool {
    
    return (UIScreen.main.bounds.size.height == 568)
  }
  
  public static var isIPhone4_7Inch: Bool {
    
    return (UIScreen.main.bounds.size.height == 667)
  }
  
  public static var isIPhone5_5Inch: Bool {
    
    return (UIScreen.main.bounds.size.height == 736)
  }
  
}
