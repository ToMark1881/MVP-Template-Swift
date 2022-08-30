//  VIPER Template created by Vladyslav Vdovychenko
//  ___FILEHEADER___

import Foundation

class ___VARIABLE_productName___Presenter: BasePresenter {
    
    // MARK: - Injected
    
    weak var view: ___VARIABLE_productName___ViewInputProtocol!
    var router: ___VARIABLE_productName___RouterInputProtocol!
    weak var moduleOutput: ___VARIABLE_productName___ModuleOutput?
    
}

// MARK: - Module Input
extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___ModuleInput {
    
}

// MARK: - View - Presenter
extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___ViewOutputProtocol {
    
}

// MARK: - Router - Presenter
extension ___VARIABLE_productName___Presenter: ___VARIABLE_productName___RouterOutputProtocol {
    
}
