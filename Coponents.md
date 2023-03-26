# Clean architecture
## Component
- What is a component ?
    - Components are the units of deployment. They are smallest entities that can be deployed as part of a system.
    - Components can be linked together into a single executable. Or they can aggregated together into a single archive. Or they can be independently deployed as separate dynamically loaded plugins.
- What is the advantages of a **well designed components** ?
    - A well designed components always retain the ability to be indeplendently deployable and, therefore, independently developable.
## Linkers
- The loading and te linking was separate into two phases.
    - The slower part: **linking** was handle by the *linker*.
    - The faster part: **loading** will load quickly from out put file of the linker.
- The computer clocks has increase that make the linking at load time become possbile. Some language use this mechanism to create **Component plugin architecture**

## Component Cohesion
### The Reuse/Release Equivalence Principle
- The granule of reuse if the granule of release
- The classes and modules that are formed into a component must belong to a cohesive group.
### The Common Closure Principle
- Gather into components those classes that change for the same reasons and at the same times. Separate into differet components those classes that change at different times and for different reasons.
- This is SRP for the components.
### The Common Reuese Principle
- Don't force uses of a component to depend on things they don't need.
- When we depend on a component, we want to make sure we depend on every class in that component. 