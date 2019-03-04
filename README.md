# class_builder

util for string based class initialization

## Getting Started

##### register class

`ClassBuilder.register<ClassBuilderTest>(() => ClassBuilderTest());`

##### instantiate from string

`var instance = ClassBuilder.fromString('ClassBuilderTest');`

##### check type
`TypeMatcher<ClassBuilderTest>().check(instance) // true`
