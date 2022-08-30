//  VIPER Template created by Vladyslav Vdovychenko
//  ___FILEHEADER___

import Foundation
import UIKit

class ___VARIABLE_productName___Wireframe: BaseWireframe {
    
    override func storyboardName() -> String {
        return "<#storyboard name#>"
    }
    
    override func identifier() -> String {
        return "___VARIABLE_productName___ViewController"
    }
    
    func pushFrom(_ parent: UINavigationController?,
                  moduleInput: inout ___VARIABLE_productName___ModuleInput?,
                  moduleOutput: ___VARIABLE_productName___ModuleOutput? = nil) {
        guard let viewController = self.createModule(moduleInput: &moduleInput,
                                                     moduleOutput: moduleOutput),
              let parent = parent else { return }
        
        self.presentedViewController = viewController
        parent.pushViewController(viewController, animated: true)
    }
    
    func presentIn(_ parent: UIViewController?,
                   moduleInput: inout ___VARIABLE_productName___ModuleInput?,
                   moduleOutput: ___VARIABLE_productName___ModuleOutput? = nil) {
        guard let viewController = self.createModule(moduleInput: &moduleInput,
                                                     moduleOutput: moduleOutput),
              let parent = parent else { return }
        
        let navigationController = UINavigationController(rootViewController: viewController)
        self.presentedViewController = viewController
        
        navigationController.modalPresentationStyle = .fullScreen
        parent.present(navigationController, animated: true, completion: nil)
    }
    
    func createModule(moduleInput: inout ___VARIABLE_productName___ModuleInput?,
                      moduleOutput: ___VARIABLE_productName___ModuleOutput?) -> ___VARIABLE_productName___ViewController? {
        guard let view: ___VARIABLE_productName___ViewController = initializeController() else { return nil }
        let presenter = ___VARIABLE_productName___Presenter()
        let router = ___VARIABLE_productName___Router()
        
        presenter.view = view
        presenter.router = router
        
        view.output = presenter
        router.output = presenter
        
        router.view = view
        presenter.moduleOutput = moduleOutput
        
        moduleInput = presenter
        
        return view
    }
    
}
