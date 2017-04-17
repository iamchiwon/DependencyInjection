# Dependency Injection Example

## Usage

#### Step 1 : Regist instance with protocol

```swift
Configurator.shared.regist(type: SampleInteractorPtorocol.self, instance: SampleInteractor())
```

#### Step2 : Define protocol, Inject the instance and use it

```swift
protocol SampleInteractorPtorocol {
  func doSomething()
}

class ViewController: UIViewController {
  
  lazy var interactor = Configurator.shared.inject(type: SampleInteractorPtorocol.self)

  override func viewDidLoad() {
    super.viewDidLoad()
    
    interactor?.doSomething()
  }
}

```

#### Step3 : Implements the protocol

```swift
class SampleInteractor : SampleInteractorPtorocol {
  func doSomething() {
    print("doing something")
  }
}
```

## DI Configurator

- Very simple one source file : [Configurator Source Code](DISample/DISample/Configurator.swift)
    

## Reference

 - [Wikipedia : Dependency Injection](https://en.wikipedia.org/wiki/Dependency_injection)
 
 #### Useful for clean-swift architecture, a.k.a VIP

 - [Clean Swift](http://clean-swift.com/)
 - [Clean Architecture](https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html)

 #### Other Swift DI Libs

 - [EasyInject](https://github.com/vknabel/EasyInject)
 - [DGDependencyInjector](https://github.com/Digipolitan/dependency-injector-swift)