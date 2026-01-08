//
//  JournalEntry.swift
//  Journal
//
//  Created by pedro azevedo on 08/01/2026.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var title: String = ""
    var text: String = ""
    var rating: Double = 0
    var date: Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
    
}

//
//let bigText = """
//Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus a malesuada eros. Nulla cursus at urna rutrum vestibulum. Nunc leo velit, convallis at sagittis vel, pretium at ex. Suspendisse potenti. Quisque viverra ex ligula, eget tempus nisl vulputate sit amet. In hac habitasse platea dictumst. Phasellus id facilisis sapien. Donec metus nibh, luctus ut mattis id, congue ac tellus. Etiam nec maximus quam. Ut pharetra nisl sed pharetra convallis. Aenean cursus lacinia vestibulum. Fusce in sem malesuada, convallis lacus id, gravida est. Phasellus ornare arcu quis lacus euismod, a ullamcorper mauris gravida. Sed faucibus ex eu velit porttitor egestas.
//
//        Sed molestie pulvinar bibendum. Cras feugiat condimentum tempus. Nullam finibus nisl eros, non faucibus leo congue quis. Nunc viverra nisl id orci faucibus, sed tempor ante dictum. Aliquam at erat sollicitudin, pulvinar diam a, pharetra ex. Suspendisse convallis commodo elementum. Phasellus et ullamcorper enim, id facilisis neque.
//
//        Quisque efficitur sapien erat, id iaculis velit rhoncus luctus. Maecenas lectus mauris, condimentum nec pellentesque ac, facilisis ut velit. Aliquam nec viverra leo. Morbi consequat malesuada dui, a facilisis augue interdum sit amet. Integer ac dui semper, consequat lacus id, faucibus urna. Aenean condimentum eget nulla nec ultricies. Etiam ut purus vitae purus laoreet sollicitudin. Ut sed mattis enim, eget congue nibh. Fusce ut diam vulputate, maximus tortor nec, eleifend lacus. Maecenas nunc mauris, bibendum eu nisi a, fringilla ultrices ex. In varius porta risus quis ullamcorper. Donec sollicitudin porta felis ut consectetur.
//
//        Donec tempus ligula non massa lobortis, eu hendrerit nunc dictum. Donec quis lectus semper, malesuada leo fermentum, euismod eros. Morbi porttitor ante et purus lacinia vulputate. Integer eget eros purus. Ut sit amet sem leo. Quisque congue mi volutpat, semper lectus nec, convallis nulla. Donec lacinia, purus quis maximus commodo, leo dui congue sapien, quis tincidunt tortor lacus in turpis. Sed condimentum suscipit aliquam. Nam euismod lacinia nisl a iaculis. Phasellus tristique ante in orci interdum ultrices. Mauris accumsan elementum ipsum. Fusce aliquet odio interdum nisl varius, eu consectetur diam consequat. Etiam et ipsum fringilla, consectetur ligula nec, maximus neque.
//
//        In sollicitudin rutrum porttitor. Nam vehicula eros augue, posuere placerat orci ultrices ut. Phasellus odio nisl, volutpat sit amet risus non, faucibus pellentesque nibh. Fusce hendrerit dictum auctor. Duis ultrices lobortis nulla quis vulputate. Praesent commodo ex nec bibendum sodales. Quisque ut nunc nec est malesuada pretium id nec risus. Nunc leo sem, sollicitudin vitae velit at, convallis sollicitudin neque. Suspendisse eget ullamcorper tellus, ac bibendum justo. Aliquam erat volutpat. Praesent condimentum sed magna non porttitor. Praesent venenatis venenatis nunc, ac fringilla felis feugiat ut.
//
//        Aenean nec libero elit. Etiam erat leo, pretium vel molestie dignissim, bibendum eget diam. Cras consequat tristique sem id auctor. Nam ullamcorper suscipit nunc nec sodales. Nulla lobortis massa ac posuere porta. Ut in massa in justo aliquam maximus. Nulla accumsan augue a arcu malesuada, sed ultrices urna aliquet. Sed rhoncus at erat sit amet convallis. Curabitur cursus a velit vel consectetur.
//
//        Pellentesque quis risus sed lacus ornare sollicitudin. Maecenas sed venenatis massa, et pharetra arcu. Integer ultrices dignissim arcu at lacinia. Vivamus sed gravida urna, eu consequat arcu. Proin eget elit consequat, bibendum ante nec, dapibus neque. Vivamus eu vehicula orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Quisque arcu eros, dictum et viverra vel, egestas ut nibh. Aliquam sed lorem blandit, dapibus sapien nec, elementum erat. Pellentesque eu vehicula lectus, sit amet fermentum elit. Ut nisi massa, commodo id elementum non, maximus nec risus. Mauris ut neque id mi suscipit ullamcorper non sit amet ante. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed nec fermentum eros, ut feugiat quam. Proin tellus metus, molestie non arcu eget, lobortis tincidunt eros.
//
//        Sed in lacinia eros. Nullam quis dui id lorem bibendum lacinia. Nam id augue non libero commodo egestas eget non lectus. Cras lacinia, justo a dapibus congue, erat purus laoreet odio, sed luctus enim mauris eget orci. Praesent lacinia ligula sit amet pulvinar posuere. Cras nec aliquam mi. Etiam rutrum, eros eu finibus gravida, ante lorem auctor orci, nec ultricies quam felis at odio. Ut lacinia vitae nibh a auctor. Aliquam pellentesque ut neque quis ultricies. Sed congue, ligula quis vestibulum aliquam, eros lacus placerat dui, a semper arcu erat a nibh.
//
//        In a hendrerit mi. Aliquam massa nisi, consequat at vulputate ut, lobortis sed dui. Fusce auctor ipsum ex, quis suscipit ipsum vulputate ac. Praesent non egestas lorem. Donec facilisis a velit in blandit. Phasellus fringilla accumsan nibh sit amet interdum. In nulla dui, dapibus in libero non, faucibus placerat tellus. Fusce egestas consequat neque aliquet ornare.
//
//        Duis at risus et dui tristique rutrum. Maecenas eu felis dictum, lacinia dui id, tempus augue. Pellentesque rutrum augue a laoreet egestas. Aliquam erat volutpat. Ut elementum turpis sit amet tellus fermentum lobortis. Etiam nec aliquet dui. Donec ullamcorper, ipsum id vestibulum vestibulum, eros turpis luctus turpis, vitae luctus lacus ipsum tempor magna. Vivamus luctus mi ut arcu dictum, varius pharetra neque interdum. Nulla lacus sapien, porta suscipit condimentum ac, mollis a massa. Donec euismod metus et bibendum ultrices. Phasellus vitae nibh placerat, malesuada sapien a, mollis urna.
//"""
//
//let journalEntries: [JournalEntry] = [
//    JournalEntry(
//        title: "Good learning day",
//        text: "I have leant iOS development",
//        rating: 4,
//        date: Date()
//    ),
//    JournalEntry(
//        title: "Headache day",
//        text: "I woke up with a headache",
//        rating: 2,
//        date: Date.now.addingTimeInterval(-24 * 60 * 60)
//    ),
//    JournalEntry(
//        title: "My app os done",
//        text: bigText,
//        rating: 3,
//        date: Date.now.addingTimeInterval(-48 * 60 * 60)
//    ),
//
//]
