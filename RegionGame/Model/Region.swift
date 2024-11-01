//
//  Region.swift
//  RegionGame
//
//  Created by Андрей Степанов on 01.11.2024.
//

import Foundation

struct Region {
    var id: Int
    var name: String
}

let regions: [Region] = [
    .init(id: 1, name: "Республика Адыгея (Адыгея)"),
    .init(id: 2, name: "Республика Башкортостан"),
    .init(id: 3, name: "Республика Бурятия"),
    .init(id: 4, name: "Республика Алтай"),
    .init(id: 5, name: "Республика Дагестан"),
    .init(id: 6, name: "Республика Ингушетия"),
    .init(id: 7, name: "Кабардино-Балкарская Республика"),
    .init(id: 8, name: "Республика Калмыкия"),
    .init(id: 9, name: "Карачаево-Черкесская Республика"),
    .init(id: 10, name: "Республика Карелия"),
    .init(id: 11, name: "Республика Коми"),
    .init(id: 12, name: "Республика Марий Эл"),
    .init(id: 13, name: "Республика Мордовия"),
    .init(id: 14, name: "Республика Саха (Якутия)"),
    .init(id: 15, name: "Республика Северная Осетия (Алания)"),
    .init(id: 16, name: "Республика Татарстан"),
    .init(id: 17, name: "Республика Тыва"),
    .init(id: 18, name: "Республика Удмуртия"),
    .init(id: 19, name: "Республика Хакасия"),
    .init(id: 21, name: "Чувашская Республика (Чувашия)"),
    .init(id: 22, name: "Алтайский край"),
    .init(id: 23, name: "Краснодарский край"),
    .init(id: 24, name: "Красноярский край"),
    .init(id: 25, name: "Приморский край"),
    .init(id: 26, name: "Ставропольский край"),
    .init(id: 27, name: "Хабаровский край"),
    .init(id: 28, name: "Амурская область"),
    .init(id: 29, name: "Архангельская область"),
    .init(id: 30, name: "Астраханская область"),
    .init(id: 31, name: "Белгородская область"),
    .init(id: 32, name: "Брянская область"),
    .init(id: 33, name: "Владимирская область"),
    .init(id: 34, name: "Волгоградская область"),
    .init(id: 35, name: "Вологодская область"),
    .init(id: 36, name: "Воронежская область"),
    .init(id: 37, name: "Ивановская область"),
    .init(id: 38, name: "Иркутская область"),
    .init(id: 39, name: "Калининградская область"),
    .init(id: 40, name: "Калужская область"),
    .init(id: 41, name: "Камчатский край"),
    .init(id: 42, name: "Кемеровская область"),
    .init(id: 43, name: "Кировская область"),
    .init(id: 44, name: "Костромская область"),
    .init(id: 45, name: "Курганская область"),
    .init(id: 46, name: "Курская область"),
    .init(id: 47, name: "Ленинградская область"),
    .init(id: 48, name: "Липецкая область"),
    .init(id: 49, name: "Магаданская область"),
    .init(id: 50, name: "Московская область"),
    .init(id: 51, name: "Мурманская область"),
    .init(id: 52, name: "Нижегородская область"),
    .init(id: 53, name: "Новгородская область"),
    .init(id: 54, name: "Новосибирская область"),
    .init(id: 55, name: "Омская область"),
    .init(id: 56, name: "Оренбургская область"),
    .init(id: 57, name: "Орловская область"),
    .init(id: 58, name: "Пензенская область"),
    .init(id: 59, name: "Пермский край"),
    .init(id: 60, name: "Псковская область"),
    .init(id: 61, name: "Ростовская область"),
    .init(id: 62, name: "Рязанская область"),
    .init(id: 63, name: "Самарская область"),
    .init(id: 64, name: "Саратовская область"),
    .init(id: 65, name: "Сахалинская область"),
    .init(id: 66, name: "Свердловская область"),
    .init(id: 67, name: "Смоленская область"),
    .init(id: 68, name: "Тамбовская область"),
    .init(id: 69, name: "Тверская область"),
    .init(id: 70, name: "Томская область"),
    .init(id: 71, name: "Тульская область"),
    .init(id: 72, name: "Тюменская область"),
    .init(id: 73, name: "Ульяновская область"),
    .init(id: 74, name: "Челябинская область"),
    .init(id: 75, name: "Забайкальский край"),
    .init(id: 76, name: "Ярославская область"),
    .init(id: 77, name: "Москва"),
    .init(id: 78, name: "Санкт-Петербург"),
    .init(id: 79, name: "Еврейская автономная область"),
    .init(id: 80, name: "Донецкая Народная Республика"),
    .init(id: 81, name: "Луганская Народная Республика"),
    .init(id: 82, name: "Республика Крым"),
    .init(id: 83, name: "Ненецкий автономный округ"),
    .init(id: 84, name: "Херсонская область"),
    .init(id: 85, name: "Запорожская область"),
    .init(id: 86, name: "Ханты-Мансийский АО (Югра)"),
    .init(id: 87, name: "Чукотский автономный округ"),
    .init(id: 89, name: "Ямало-Ненецкий автономный округ"),
    .init(id: 90, name: "Московская область"),
    .init(id: 91, name: "Калининградская область"),
    .init(id: 92, name: "Севастополь"),
    .init(id: 93, name: "Краснодарский край"),
    .init(id: 94, name: "Территории за пределами РФ, обслуживаемые Департаментом режимных объектов МВД России"),
    .init(id: 95, name: "Чеченская республика"),
    .init(id: 96, name: "Свердловская область"),
    .init(id: 97, name: "Москва"),
    .init(id: 98, name: "Санкт-Петербруг"),
    .init(id: 99, name: "Москва")
]
