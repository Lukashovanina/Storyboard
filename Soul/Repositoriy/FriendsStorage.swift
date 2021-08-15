//
//  FriendsStorage.swift
//  Soul
//
//  Created by Нина Лукашова on 14.08.2021.
//

import Foundation

class FriendStorage {
    var friend:  [FriendModel]
    let allFriends: [FriendModel]
    
    init() {
        friend = [
            FriendModel (nicName: "Дядя Федор", avatarName: "Дядя Федор 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Прочстоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Дядя Федор 2"),
                            PhotoModel(namePhoto: "", fileName: "Дядя Федор 3"),
                            PhotoModel(namePhoto: "", fileName: "Дядя Федор 4"),
                            PhotoModel(namePhoto: "", fileName: "Дядя Федор 5"),
                            PhotoModel(namePhoto: "", fileName: "Дядя Федор 6"),
                         ]
            ),
            FriendModel (nicName: "Папа", avatarName: "Папа 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Папа 2"),
                            PhotoModel(namePhoto: "", fileName: "Папа 3"),
                            PhotoModel(namePhoto: "", fileName: "Папа 4"),
                            PhotoModel(namePhoto: "", fileName: "Папа 5"),
                            
                         ]
            ),
            
            FriendModel (nicName: "Мама", avatarName: "Мама 2",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Мама 2"),
                            PhotoModel(namePhoto: "", fileName: "Мама 3"),
                            PhotoModel(namePhoto: "", fileName: "Мама 4"),
                            PhotoModel(namePhoto: "", fileName: "Мама 5"),
                            PhotoModel(namePhoto: "", fileName: "Мама 6"),
                         ]
            ),
            
            FriendModel (nicName: "Печкин", avatarName: "Печкин 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Печкин 2"),
                            PhotoModel(namePhoto: "", fileName: "Печкин 3"),
                            PhotoModel(namePhoto: "", fileName: "Печкин 4"),
                            PhotoModel(namePhoto: "", fileName: "Печкин 5"),
                            PhotoModel(namePhoto: "", fileName: "Печкин 6"),
                         ]
            ),
            
            FriendModel (nicName: "Мурка", avatarName: "Мурка 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Мурка 2"),
                            PhotoModel(namePhoto: "", fileName: "Мурка 3"),
                            PhotoModel(namePhoto: "", fileName: "Мурка 4"),
                            PhotoModel(namePhoto: "", fileName: "Мурка 5"),
                            PhotoModel(namePhoto: "", fileName: "Мурка 6"),
                            PhotoModel(namePhoto: "", fileName: "Мурка 7"),
                         ]
            ),
            
            
            FriendModel (nicName: "Матроскин", avatarName: "Матроскин 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Матроскин 2"),
                            PhotoModel(namePhoto: "", fileName: "Матроскин 3"),
                            PhotoModel(namePhoto: "", fileName: "Матроскин 4"),
                            PhotoModel(namePhoto: "", fileName: "Матроскин 5"),
                            PhotoModel(namePhoto: "", fileName: "Матроскин 6"),
                         ]
            ),
            
            FriendModel (nicName: "Шарик", avatarName: "Шарик 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Шарик 2"),
                            PhotoModel(namePhoto: "", fileName: "Шарик 3"),
                            PhotoModel(namePhoto: "", fileName: "Шарик 4"),
                            PhotoModel(namePhoto: "", fileName: "Шарик 5"),
                            PhotoModel(namePhoto: "", fileName: "Шарик 6"),
                         ]
            ),
            
            FriendModel (nicName: "Маугли", avatarName: "Маугли",
                         
                         groupsUser: [GroupModel(nameGroup: "Маугли", avatarGroup: "МауглиОбщая")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Маугли"),
                            PhotoModel(namePhoto: "", fileName: "Маугли"),
                            PhotoModel(namePhoto: "", fileName: "Маугли"),
                            PhotoModel(namePhoto: "", fileName: "Маугли"),
                            PhotoModel(namePhoto: "", fileName: "Маугли"),
                         ]
            ),
            FriendModel (nicName: "Балу", avatarName: "Балу",
                         
                         groupsUser: [GroupModel(nameGroup: "Маугли", avatarGroup: "МауглиОбщая")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Балу"),
                            PhotoModel(namePhoto: "", fileName: "Балу"),
                            PhotoModel(namePhoto: "", fileName: "Балу"),
                            PhotoModel(namePhoto: "", fileName: "Балу"),
                            PhotoModel(namePhoto: "", fileName: "Балу"),
                         ]
            ),
            
        ]
        
        allFriends = [
            FriendModel (nicName: "Галчонок", avatarName: "Галчонок",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Галчонок"),
                            PhotoModel(namePhoto: "", fileName: "Галчонок"),
                            PhotoModel(namePhoto: "", fileName: "Галчонок"),
                            PhotoModel(namePhoto: "", fileName: "Галчонок"),
                            PhotoModel(namePhoto: "", fileName: "Галчонок"),
                         ]
            ),
            
            FriendModel (nicName: "Теленок", avatarName: "Теленок",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Теленок"),
                            PhotoModel(namePhoto: "", fileName: "Теленок"),
                            PhotoModel(namePhoto: "", fileName: "Теленок"),
                            PhotoModel(namePhoto: "", fileName: "Теленок"),
                            PhotoModel(namePhoto: "", fileName: "Теленок"),
                         ]
            ),
            
            FriendModel (nicName: "Багира", avatarName: "Багира",
                         
                         groupsUser: [GroupModel(nameGroup: "Маугли", avatarGroup: "МауглиОбщая")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Багира"),
                            PhotoModel(namePhoto: "", fileName: "Багира"),
                            PhotoModel(namePhoto: "", fileName: "Багира"),
                            PhotoModel(namePhoto: "", fileName: "Багира"),
                            PhotoModel(namePhoto: "", fileName: "Багира"),
                         ]
            ),
            FriendModel (nicName: "Ослик", avatarName: "Ослик",
                         
                         groupsUser: [GroupModel(nameGroup: "Винипух", avatarGroup: "ВинипухОбщая")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Ослик"),
                            PhotoModel(namePhoto: "", fileName: "Ослик"),
                            PhotoModel(namePhoto: "", fileName: "Ослик"),
                            PhotoModel(namePhoto: "", fileName: "Ослик"),
                            PhotoModel(namePhoto: "", fileName: "Ослик"),
                         ]
            ),
            FriendModel (nicName: "Пчелы", avatarName: "Пчелы",
                         
                         groupsUser: [GroupModel(nameGroup: "Винипух", avatarGroup: "ВинипухОбщая")
                         ],
                         photo: [
                            PhotoModel(namePhoto: "", fileName: "Пчелы"),
                            PhotoModel(namePhoto: "", fileName: "Пчелы"),
                            PhotoModel(namePhoto: "", fileName: "Пчелы"),
                            PhotoModel(namePhoto: "", fileName: "Пчелы"),
                            PhotoModel(namePhoto: "", fileName: "Пчелы"),
                         ]
            )
        ]
    }
}
