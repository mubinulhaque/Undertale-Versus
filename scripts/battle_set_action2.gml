///battle_set_action2()

//Setting Defaults
draw_set_colour(c_white)
draw_set_font(FntMain)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

//Action Arrays
buttonAction2[0] = battle_fight2
buttonAction2[1] = battle_act2
buttonAction2[2] = battle_item2
buttonAction2[3] = battle_mercy2

//Selecting Action For Player 2
if(ObjBattleAlarm.alarm[3] <= 0) {
    if(INPUT.rightKey2) {
        if(action_index2 < array_length_1d(button) - 1) {
            action_index2++
        } else {
            action_index2 = 0
        }
        ObjBattleAlarm.alarm[3] = room_speed / 4
    }
    if(INPUT.leftKey2) {
        if(action_index2 > 0) {
            action_index2--
        } else {
            action_index2 = array_length_1d(button) - 1
        }
        ObjBattleAlarm.alarm[3] = room_speed / 4
    }
}

//Enter Key
if(INPUT.enterKey2) {
    action2 = buttonAction2[action_index2]
}

//Drawing Text
draw_scroll_text(336, 272, dialogText, ObjBattleAlarm.chars_drawn2, 256)
