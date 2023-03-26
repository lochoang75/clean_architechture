# Clean Architecture
## Some Section Notes
### Table of two values
- Software developers are responsible for ensuring the **behavior** and the **structure**.
- Software was invented to be **soft** - that is, it must be easy to change.
- *If you give me a program that works perfectly but it impossible to change, then it won't work when the requirements change, and I won't be able to make it work. Therefore the program will become useles*
- *If you give me a program that does not work but is easy to change, then I can make it work, and keep it working as requirements change. Therefor the program will remain continually useful*
- **Remember, as a software developer, you are a stakeholder. You have a stake in the software that you need to safeguard. That's your role, and part of your duty.**
### Paradigm Overview
- Structured Programing imposes discipline on direct transfer of control.
    - Certain uses of *goto* statements prevent modules from being decomposed recursively into smaller and smaller units.
    - Scientific theories and laws cannot be proven correct.
    - Science does not work by proving statements true, but rather by *proving statements false*. Those statements that we cannot prove false, after much effor, we deem to be true enough for our purposes.
    - Structure programing forces us to recursively decompose a program into a set of small provable functions. We can then use tests to try to prove those small provable functions incorrect. If such test fail to prove incorrectness, then we deem the functions to be correct enough for our purposes.
- Object Oriented Programming impose discipline on indirect transfer of control
    - OOP is the proper admixture of: *encapsulation*, *inheritance* and *polymorphism* ? we need will go through each of them:
        - **Encapsulation** of Object Oriented(OO) langguages provide easy and effective encapsulation of data and function. But many programming languages have little or no enforced encapsulation.
        - **Inheritance** is simply the redeclaration of a group of variable and functins within an enclosing scope. But C can do it a tricky way, so OO languages did not give us something completely brand new, it did make the masquerading of data structures significantly more convenient.
        - **Polymorphism** is an application of pointer to functions, programmer have been using pointer to functions to achieve polymorphic behavior long ago. OO languages make it safer and much more convient. Using pointer to function to create polymorphic behavior is that pointer to function are *dangerous*. 
    - So, from the software architect, **OO is the ability, through the use of polymorphism, to gain absolute control over ervery source code dependency in the system. It allows the architect to create a plugin architecture, in which modules that contain high-level policies are independent of modules that contain low-level details. The low-level details are relegated to plugin modules that can be deployed and developed independently from the modules that contain high-level policies.**
- Functional Programming impose discipline upon variable assignment
    - Variables in functional languages do not vary
    - All race conditions, deadlock conditions and concurrent update problems are due to mutable variables. You cannot have a race conditin or a concurrent update problem if no variale is ever updated. You cannot have deadlocks without mutable locks.
    - Functional programing require much more memory and computing speed to work efficently.

- Software is composed of sequence, selection, iteration, and indirection.