//
//  GroupStorage.swift
//  Soul
//
//  Created by Нина Лукашова on 14.08.2021.
//

import Foundation

class GroupStorage{
    let group: [GroupModel]
    let allGroups: [GroupModel]
    
    init() {
        group = [
            GroupModel(
                nameGroup: "Простоквашино",
                avatarGroup: "Простоквашино"),
            
            GroupModel(
                nameGroup: "Чебурашка",
                avatarGroup: "ЧебурашкаОбщая"),
            
            GroupModel(
                nameGroup: "Маугли",
                avatarGroup: "МауглиОбщая"),
            
            GroupModel(
                nameGroup: "Маша и Медведь",
                avatarGroup: "Маша и Медведь"),
        ]
        allGroups = [
            GroupModel(
                nameGroup: "Простоквашино",
                avatarGroup: "Простоквашино"),
            
            GroupModel(
                nameGroup: "Чебурашка",
                avatarGroup: "ЧебурашкаОбщая"),
            
            GroupModel(
                nameGroup: "Маугли",
                avatarGroup: "МауглиОбщая"),
            
            GroupModel(
                nameGroup: "Маша и Медведь",
                avatarGroup: "Маша и Медведь"),
            
            GroupModel(
                nameGroup: "Вигнипух",
                avatarGroup: "ВинипухОбщая"),
            
            GroupModel(
                nameGroup: "Малыш и Карлсон",
                avatarGroup: "Малыш и Карлсон"),
            
            GroupModel(
                nameGroup: "Лунтик",
                avatarGroup: "ЛунтикОбщая"),
            
            GroupModel(
                nameGroup: "Незнайка и его Друзья",
                avatarGroup: "Незнайка и Друзья"),
            
            GroupModel(
                nameGroup: "Ну Погоди!",
                avatarGroup: "Ну Погоди!"),
        ]
    }
}
