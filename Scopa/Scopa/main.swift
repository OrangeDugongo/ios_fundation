//
//  main.swift
//  Scopa
//
//  Created by mignoneraffaele on 26/09/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import Foundation

enum Seed: String {
    case SPADE = "spade" , BASTONI = "bastoni", DENARI = "denari", COPPE = "coppe"
}

enum Figure: Int {
    case ASSO = 1,
         DUE, TRE, QUATTRO, CINQUE, SEI, SETTE, FANTE, CAVALLO, RE
}

class Card {
    let seed: Seed
    let figure: Figure

    init(seed: Seed, figure: Figure){
        self.seed = seed
        self.figure = figure
    }

    func state() {
        print("\(figure) of \(seed)")
    }
}

class Deck {
     private var deck: [Card]

    init(){
        deck = [Card]()
        build()
        shuffle()
    }

    private func build() {
        let seed = [Seed.BASTONI, Seed.COPPE, Seed.DENARI, Seed.SPADE]
        var figure = [Figure.ASSO, Figure.DUE, Figure.TRE, Figure.QUATTRO,
            Figure.CINQUE, Figure.SEI, Figure.SETTE, Figure.FANTE, Figure.CAVALLO, Figure.RE]

        seed.forEach { seed in
            figure.forEach { figure in
                deck.append(Card(seed: seed, figure: figure))
            }
        }
    }

    func shuffle(n: Int = 100) {
        for _ in 0...n {
            let r1 = Int(arc4random_uniform(40))
            let card = deck.remove(at: r1)
            let r2 = Int(arc4random_uniform(40))
            deck.insert(card, at: r2)
        }
    }

    func pop() -> Card {
        return deck.remove(at: 0)
    }
}

class Player {
    var hand = [Card]()
    var points = [Card]()
    let name: String

    init(nome: String){
        self.name = nome
    }
    func addCarta(_ c: Card) {
        hand.append(c)
    }

    func state() {
        print("Carte \(name)")
        hand.forEach { $0.state() }
    }
}

class Game {
    let p1: Player
    let p2: Player
    var deck = Deck()
    var board = [Card]()

    init(_ p1: Player, _ p2: Player){
        self.p1 = p1
        self.p2 = p2
        initGame()
    }

    private func initGame() {
       for _ in 0..<4 {
           board.append(deck.pop())
       }
        getCards(p1)
        getCards(p2)
    }

    func getCards(_ p: Player) {
        for _ in 0...2 {
            p.addCarta(deck.pop())
        }
    }

    func state() {
        print("Carte a terra")
        board.forEach { $0.state() }
        p1.state()
        p2.state()
    }
}

let p1 = Player(nome: "p1")
let p2 = Player(nome: "p2")
let game = Game(p1, p2)
game.state()
