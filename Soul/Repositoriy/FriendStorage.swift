//
//  FriendStorage.swift
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
                            PhotoCollectionModel(nicName: "", fileName: "Дядя Федор 2"),
                            PhotoCollectionModel(nicName: "", fileName: "Дядя Федор 3"),
                            PhotoCollectionModel(nicName: "", fileName: "Дядя Федор 4"),
                            PhotoCollectionModel(nicName: "", fileName: "Дядя Федор 5"),
                            PhotoCollectionModel(nicName: "", fileName: "Дядя Федор 6"),
                         ]
            ),
            FriendModel (nicName: "Папа", avatarName: "Папа 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Папа 2"),
                            PhotoCollectionModel(nicName: "", fileName: "Папа 3"),
                            PhotoCollectionModel(nicName: "", fileName: "Папа 4"),
                            PhotoCollectionModel(nicName: "", fileName: "Папа 5"),
                            
                         ]
            ),
            
            FriendModel (nicName: "Мама", avatarName: "Мама 2",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Мама 2"),
                            PhotoCollectionModel(nicName: "", fileName: "Мама 3"),
                            PhotoCollectionModel(nicName: "", fileName: "Мама 4"),
                            PhotoCollectionModel(nicName: "", fileName: "Мама 5"),
                            PhotoCollectionModel(nicName: "", fileName: "Мама 6"),
                         ]
            ),
            
            FriendModel (nicName: "Печкин", avatarName: "Печкин 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Печкин 2"),
                            PhotoCollectionModel(nicName: "", fileName: "Печкин 3"),
                            PhotoCollectionModel(nicName: "", fileName: "Печкин 4"),
                            PhotoCollectionModel(nicName: "", fileName: "Печкин 5"),
                            PhotoCollectionModel(nicName: "", fileName: "Печкин 6"),
                         ]
            ),
            
            FriendModel (nicName: "Мурка", avatarName: "Мурка 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Мурка 2"),
                            PhotoCollectionModel(nicName: "", fileName: "Мурка 3"),
                            PhotoCollectionModel(nicName: "", fileName: "Мурка 4"),
                            PhotoCollectionModel(nicName: "", fileName: "Мурка 5"),
                            PhotoCollectionModel(nicName: "", fileName: "Мурка 6"),
                            PhotoCollectionModel(nicName: "", fileName: "Мурка 7"),
                         ]
            ),
            
            
            FriendModel (nicName: "Матроскин", avatarName: "Матроскин 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Матроскин 2"),
                            PhotoCollectionModel(nicName: "", fileName: "Матроскин 3"),
                            PhotoCollectionModel(nicName: "", fileName: "Матроскин 4"),
                            PhotoCollectionModel(nicName: "", fileName: "Матроскин 5"),
                            PhotoCollectionModel(nicName: "", fileName: "Матроскин 6"),
                         ]
            ),
            
            FriendModel (nicName: "Шарик", avatarName: "Шарик 1",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Шарик 2"),
                            PhotoCollectionModel(nicName: "", fileName: "Шарик 3"),
                            PhotoCollectionModel(nicName: "", fileName: "Шарик 4"),
                            PhotoCollectionModel(nicName: "", fileName: "Шарик 5"),
                            PhotoCollectionModel(nicName: "", fileName: "Шарик 6"),
                         ]
            ),
            
            FriendModel (nicName: "Маугли", avatarName: "Маугли",
                         
                         groupsUser: [GroupModel(nameGroup: "Маугли", avatarGroup: "МауглиОбщая")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Маугли"),
                            PhotoCollectionModel(nicName: "", fileName: "Маугли"),
                            PhotoCollectionModel(nicName: "", fileName: "Маугли"),
                            PhotoCollectionModel(nicName: "", fileName: "Маугли"),
                            PhotoCollectionModel(nicName: "", fileName: "Маугли"),
                         ]
            ),
            FriendModel (nicName: "Балу", avatarName: "Балу",
                         
                         groupsUser: [GroupModel(nameGroup: "Маугли", avatarGroup: "МауглиОбщая")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Балу"),
                            PhotoCollectionModel(nicName: "", fileName: "Балу"),
                            PhotoCollectionModel(nicName: "", fileName: "Балу"),
                            PhotoCollectionModel(nicName: "", fileName: "Балу"),
                            PhotoCollectionModel(nicName: "", fileName: "Балу"),
                         ]
            ),
            
        ]
        
        allFriends = [
            FriendModel (nicName: "Галчонок", avatarName: "Галчонок",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Галчонок"),
                            PhotoCollectionModel(nicName: "", fileName: "Галчонок"),
                            PhotoCollectionModel(nicName: "", fileName: "Галчонок"),
                            PhotoCollectionModel(nicName: "", fileName: "Галчонок"),
                            PhotoCollectionModel(nicName: "", fileName: "Галчонок"),
                         ]
            ),
            
            FriendModel (nicName: "Теленок", avatarName: "Теленок",
                         
                         groupsUser: [GroupModel(nameGroup: "Простоквашино", avatarGroup: "Простоквашино")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Теленок"),
                            PhotoCollectionModel(nicName: "", fileName: "Теленок"),
                            PhotoCollectionModel(nicName: "", fileName: "Теленок"),
                            PhotoCollectionModel(nicName: "", fileName: "Теленок"),
                            PhotoCollectionModel(nicName: "", fileName: "Теленок"),
                         ]
            ),
            
            FriendModel (nicName: "Багира", avatarName: "Багира",
                         
                         groupsUser: [GroupModel(nameGroup: "Маугли", avatarGroup: "МауглиОбщая")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Багира"),
                            PhotoCollectionModel(nicName: "", fileName: "Багира"),
                            PhotoCollectionModel(nicName: "", fileName: "Багира"),
                            PhotoCollectionModel(nicName: "", fileName: "Багира"),
                            PhotoCollectionModel(nicName: "", fileName: "Багира"),
                         ]
            ),
            FriendModel (nicName: "Ослик", avatarName: "Ослик",
                         
                         groupsUser: [GroupModel(nameGroup: "Винипух", avatarGroup: "ВинипухОбщая")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Ослик"),
                            PhotoCollectionModel(nicName: "", fileName: "Ослик"),
                            PhotoCollectionModel(nicName: "", fileName: "Ослик"),
                            PhotoCollectionModel(nicName: "", fileName: "Ослик"),
                            PhotoCollectionModel(nicName: "", fileName: "Ослик"),
                         ]
            ),
            FriendModel (nicName: "Пчелы", avatarName: "Пчелы",
                         
                         groupsUser: [GroupModel(nameGroup: "Винипух", avatarGroup: "ВинипухОбщая")
                         ],
                         photo: [
                            PhotoCollectionModel(nicName: "", fileName: "Пчелы"),
                            PhotoCollectionModel(nicName: "", fileName: "Пчелы"),
                            PhotoCollectionModel(nicName: "", fileName: "Пчелы"),
                            PhotoCollectionModel(nicName: "", fileName: "Пчелы"),
                            PhotoCollectionModel(nicName: "", fileName: "Пчелы"),
                         ]
            )
        ]
    }
}
