///battle_set_action()

//Setting Defaults
draw_set_colour(c_white)
draw_set_font(FntMain)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

//Action Arrays
buttonAction[0] = battle_fight
buttonAction[1] = battle_act
buttonAction[2] = battle_item
buttonAction[3] = battle_mercy

//Selecting Action For Player 1
if(ObjBattleAlarm.alarm[2] <= 0) {
    if(INPUT.rightKey) {
        if(action_index < array_length_1d(button) - 1) {
            action_index++
        } else {
            action_index = 0
        }
        ObjBattleAlarm.alarm[2] = room_speed / 4
    }
    if(INPUT.leftKey) {
        if(action_index > 0) {
            action_index--
        } else {
            action_index = array_length_1d(button) - 1
        }
        ObjBattleAlarm.alarm[2] = room_speed / 4
    }
}

//Enter Button
if(INPUT.enterKey) {
    action = buttonAction[action_index]
}

//Drawing Text
draw_scroll_text(48, 272, dialogText, ObjBattleAlarm.chars_drawn, 256)
