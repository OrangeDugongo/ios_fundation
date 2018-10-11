//
//  main.swift
//  code
//
//  Created by mignoneraffaele on 24/09/2018.
//  Copyright © 2018 The Melons Salad. All rights reserved.
//

import Foundation
/*
print("# interi")
let m: Int = 2 // dichiarazione di una costante
var n = 1 // dichiarazione di una variabile, tipo auto referenziato
var x: Int? = nil // intero nullabile

print("# stringhe")
var str = "Hello world"
str.insert("!", at: str.endIndex) // gli indici sono oggetti
print(str)

print("# array")
var ints: [Int] = [Int]() // dichiarazione di un array
ints.append(1) // inserimento di elementi nell'array
ints.append(4)
ints[1] = ints[0] // consentiti elementi uguali

/*
print("# set")
var intSet = Set<Int>() // dichiarazione di un set
intSet.insert(0) // inserimento di un elemento nel set
intSet.insert(1)
intSet.insert(1) // il valore uno è presente un'unica volta
print(intSet[intSet.endIndex]) // accesso agli elementi, gli indici sono oggetti
var bSet = Set<Int>()
bSet.insert(1)
bSet.insert(10)
intSet.union(bSet) // unione
intSet.intersection(bSet) // intersezione
intSet.symmetricDifference(bSet) // differenza simmetrica
intSet.subtract(bSet) // differenza
*/

print("# Dizionario")
var dizionario = [Int: String]() // dichiarazione di un dizionario
dizionario[1] = "ciao" // aggiunto di un elemento tramite chiave valore
dizionario[2345] = "mondo"
dizionario[67] = dizionario[1] // si possono avere valori doppioni ma non chiavi duplicate

print("# tupla")
let persona = (nome: "Raffael", cognome: "Mignone", anni: 22) // tupla

print("# for generalizato")
for elem in ints { // for generalizzato
    print(elem)
}
print("# foreach")
ints.forEach { i in  // come sopra ma usando la foreach
    print(i)
}
print("# foreach lambda")
ints.forEach { print($0) } // sempre con la foreach ma in modo più contratto
print("# for")
(0...5).forEach{ print($0) } // operatore range

print("# while")
var i = 2
while i != 0 { // while
    print(i)
    i -= 1  // non esiste i--
}
print("# repeat")
repeat {    // equivale al do-while
    print(i)
    i += 1
} while i < 3
print("# if")
if i == 0 { // l'if è normale
    print("vale zero")
} else {
    print("non vale zero")
}
print("# switch")
switch i{
case 0:
    print("vale zero")
case 1,
     2:
    print("vale o 1 o 2")
case 3...5: // accetta i range
    print("copreso tra 3 e 5")
default:
    print("non so quanto vale")
}*/

enum  Degree: Int{
    case C = 1
    case F = 21, K

    func nome() -> String {
        switch self {
        case .C:
            return "Celsius"
        case .F:
            return "Faranhait"
        case .K:
            return "Kelvin"
        default:
            return "altro"
        }
    }
}

print(Degree.K.nome())

func swap(_ a: inout Int, _ b: inout Int){
    let tmp = a
    a = b
    b = tmp
}
var a = 5
var b = 3
swap(&a, &b)
print(a)

let nomi = ["Noemi", "Raffaele", "Solo io e te", "A Noemi"]
nomi.sorted { (s1, s2) -> Bool in s1>s2 }
nomi.sorted{ $0 > $1 }
let invertiti = nomi.map{ String($0.reversed()) }
invertiti.forEach { print($0) }

class Bottiglia {
    var capacità: Int
    var larghezza: Int
    var altezza: Int
    var brand: String
    var quantita: Int

    init(_ capacita: Int, _ larghezza: Int, _ altezza: Int, _ brand: String, _  quantita: Int){
        self.capacità = capacita
        self.larghezza = larghezza
        self.altezza = altezza
        self.brand = brand
        self.quantita = quantita
    }

    func versa(qta: Int) {
        quantita -= qta
    }
}

var lete = Bottiglia(1010, 1, 1, "Lete", 1000)

struct Indirizzo {
    var via: String
    var citta: String
    var cap: String
    var provincia: String
}

struct Persona {
    var nome: String
    var cognome: String
    var indirizzo: Indirizzo
    var etichetta: Indirizzo {
        get {
            var stampabile = indirizzo
            stampabile.provincia = "(" + stampabile.provincia + ")"
            return stampabile
        }
    }
}

var addr = Indirizzo(via: "Via rosa", citta: "Benevento", cap: "82100", provincia: "BN")
var io = Persona(nome: "Raffaele", cognome: "Mignone", indirizzo: addr)

class Veicolo {
    var numeroRuote: Int
    private(set) var marca: String
    fileprivate var modello: String

    init(numeroRuote: Int, marca: String, modello: String){
        self.numeroRuote = numeroRuote
        self.marca = marca
        self.modello = modello
    }

    convenience init() {
        self.init(numeroRuote: 0, marca: "", modello: "")
    }
}

var veicolo = Veicolo()

protocol TrazioneProtocol {
    var trazione: String {get}
    func tipoTrazione() -> String
}

class Autovettura: Veicolo, TrazioneProtocol {
    var numeroPorte: Int
    var trazione: String = "Anteriore"

    init(numeroPorte: Int, numeroRuote: Int, marca: String, modello: String){
        self.numeroPorte = numeroPorte
        super.init(numeroRuote: numeroRuote, marca: marca, modello: modello)
    }

    func tipoTrazione() -> String {
        return "da fare"
    }
}

var car = Autovettura(numeroPorte: 5, numeroRuote: 4, marca: "non so", modello: "boh")
car.
