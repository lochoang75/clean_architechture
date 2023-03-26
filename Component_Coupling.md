# Clean Architecture
## Compoent Coupling
### The Acylic Dependencies Principle
- Allow no cycles in the componency graph
- The cycles in dependency graph make it:
    - Very difficult to isolate components.
    - Unit testing and releasing become very difficult and error prone.
    - Build issues grow geometrically with the number of modules.
    - Very difficult to work out the order in which you must build the components.
#### Break the cycle
- There are two primary mechanisms for doing so:
    1. Apply the Dependency Inversion Principle.
    2. Create a new component that both component depend on. => Make dependency structure grow.
### The Stable Dependencies Principle
- Depend in the direction of stability
- Designs cannot be completely static. Some volatility is necessary if the design is to be maintained.
- Some components that are sensitive to certain kinds of changes but immune to other. Some of these compoents are designed to ve volatile. We expect them to change.
- Any component that we expect to be volatile should not be depended on by a component that is difficult to change.
- What is **stability** ?
    - Stability has nothing directly to do with frequency of change.
    - Stability is related to the amount of work required to make a change.
    - Many factors may make a software component hard to change. But focus on architecture, a component with lots of inconming dependencies is very stable because it requires a great deal of work to reconcile any changes with all the dependent component.
- Stability metrics
    - *Fan-in*: Incoming dependencies. This metric identifies the number of classes outside this component that depend on classes within the component.
    - *Fan-out*: Outgoing dependencies. This metric identifies the number of classes inside this component that depend on classes outside the component.
    - *I(i_uppercase): Instability*: *I(i_uppercase) = Fan-out, (Fan-in + Fan-out)*. 
        - *I = 0* indicates a maximally stable component.
        - *I = 1* indicates a maxiamlly unstable component.
    - The *I(i_uppercase)* metric of a component should be larger than the *I* metrics of the components that it depends on. That is, I metrics should decrease in the direction of dependency.
### The Stable Abstractions Principle
- A component should be as abstract as it is stable
- A stable component should also be abstract so that its stability does not prevent it from being extended.
- An unstable component should be concrete since it its instability allows the concrete code within it to be easily changed.
- If a component is to be stable, it should consist of interfaces and abstract classes so that it can be extended. Stable coponents that are extensible are flexible and do not overly constrain the architecture.
- *Dependencies run in the direction of abstraction*

### Measuring abstraction
- The A metric is a measure of the abstractness of a component. Its value is simply the ratio of interfaces and abstract classes in a component to the total number of classes in the component.
    - *Nc*: The number of classes in the component.
    - *Na*: The number of abstract classes and interfaces in the compponent.
    - *A*: Abstractness, A = Na/Nc. 
    - With A = 0: No Abstraction
    - with A = 1: This component contain only abstract class
### The Main Sequence
- With a graph created by abstracness(A) is a vertical axis
- With a graph created by Stability(I) is a horizontal axis
- The Main Sequence is from (0, 1) to (1, 0)
- The Zone of Pain is the area around (0,0) is a highly stable and concrete component. It is not desirable because it is rigid. It cannot be extended because it is not abstract, and it is very difficult to change because of its stability. 
- The Zone of Uselessness is the area around (1, 1). This location is undesireable because it is maximally abstract, yet has no dependents.
### Avoid The Zones of Exclusion
- Most volatile comonents should be kept as for from both zones of exclusion as possible.
- A component that sits on the Main Sequence is not "too abstract" for its stability, nor is it "too unstable" for its abstracness.
- The most desirable positin for a component is at one of the two endpoints of the Main Sequence.
### Distance From The Main Sequence
- If it is desirable for components to be on, or close, to the Main Sequence.
- *D: Distance  = | A + I - 1|* 
- D = 0 indicates that the component is directly on the Main Sequence.
- D = 1 indicates that the component is as far away as possible from the Main Sequence.
=> Any component has a D value that is not near zero can be reexamined and trstructured.


    