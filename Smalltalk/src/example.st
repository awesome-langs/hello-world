Object subclass: Hello [
    Hello class >> hello [
        Transcript show: 'Hello World!'; cr.
    ]
]

Hello hello.
