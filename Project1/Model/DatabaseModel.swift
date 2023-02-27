//
//  DatabaseModel.swift
//  Project1
//
//  Created by Aruzhan Boranbay on 22.02.2023.
//

import Foundation

struct InfoMeal {
    let name:String
    let price:Int
    let img:String
    let section:String
}

struct DatabaseModel {
    static var array:[InfoMeal] = [
        InfoMeal(name: "CocaCola", price: 123, img: "cocacola", section: "Drinks"),
        InfoMeal(name: "Fanta", price: 45, img: "fanta", section: "Drinks"),
        InfoMeal(name: "Sprite", price: 54, img: "sprite", section: "Drinks"),
        InfoMeal(name: "CupCake", price: 434, img: "cupcake", section: "Cakes"),
        InfoMeal(name: "Birthday Cake", price: 6, img: "birthdaycake", section: "Cakes"),
        InfoMeal(name: "Humburger", price: 43, img: "burger", section: "FastFoods"),
        InfoMeal(name: "Pizza", price: 765, img: "bread", section: "FastFoods"),
        InfoMeal(name: "Sandwich", price: 97, img: "sandwich", section: "FastFoods"),
        InfoMeal(name: "Chips", price: 100, img: "chips", section: "FastFoods"),
        InfoMeal(name: "Pizza", price: 345, img: "bread", section: "FastFoods"),
        InfoMeal(name: "Sandwich", price: 68, img: "sandwich", section: "FastFoods")
    ]
    
}
