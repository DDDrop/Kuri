
import Foundation

struct BuilderTemplate: Templatable {
    func comment() -> String {
        return [
            "//",
            "//  __PREFIX__Builder.swift",
            "//  Kuri",
            "//",
            "//  Created by __USERNAME__ on __DATE__.",
            "//  Copyright © __YEAR__ __USERNAME__. All rights reserved.",
            "//",
            "",
            ].joined(separator: "\n")
    }
    func interface() -> String {
        return [
            "import UIKit",
            "",
            "protocol __PREFIX__Builder {",
            "    func build() -> UIViewController",
            "}",
            ].joined(separator: "\n")
    }

    func implement() -> String {
        return [
            "struct __PREFIX__BuilderImpl: __PREFIX__Builder {",
            "    func build() -> UIViewController {",
            "        let viewController = __PREFIX__ViewController()",
            "        viewController.inject(",
            "            presenter: __PREFIX__PresenterImpl(",
            "                view: viewController,",
            "                wireframe: __PREFIX__WireframeImpl(",
            "                    viewController: viewController",
            "                ),",
            "                useCase: __PREFIX__UseCaseImpl(",
            "                    repository: __PREFIX__RepositoryImpl (",
            "                        dataStore: __PREFIX__DataStoreImpl()",
            "                    ),",
            "                    translator: __PREFIX__TranslatorImpl()",
            "                )",
            "            )",
            "        )",
            "        return viewController",
            "    }",
            "}",
            ].joined(separator: "\n")
    }
}




