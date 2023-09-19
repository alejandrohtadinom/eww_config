#!/bin/sh
workspaces() {
  ws1=web
  ws2=code
  ws3=term
  ws4=file
  ws5=img
  ws6=media
  ws7=conf
  ws8=sns
  ws9=game
  ws0=steam

  un=un

  o1=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws1")
  o2=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws2")
  o3=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws3")
  o4=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws4")
  o5=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws5")
  o6=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws6")
  o7=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws7")
  o8=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws8")
  o9=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws9")
  o0=$(hyprctl workspaces | grep ID | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws0")

  f1=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws1")
  f2=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws2")
  f3=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws3")
  f4=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws4")
  f5=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws5")
  f6=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws6")
  f7=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws7")
  f8=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws8")
  f9=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws9")
  f0=$(hyprctl monitors | grep active | sed 's/()/(1)/g' | sort | awk 'NR>1{print $1}' RS='(' FS=')' | grep "$ws0")

  echo 	"(box	:class \"works\" :orientation \"v\"	:halign \"center\"	:valign \"start\"	 :space-evenly \"false\" :spacing \"-5\" (button :onclick \"hyprctl dispatch workspace name:$ws1\"	:class	\"$un$o1$f1\"	\"󰞉\") (button :onclick \"hyprctl dispatch workspace name:$ws2\"	:class \"$un$o2$f2\"	 \"󰅨\") (button :onclick \"hyprctl dispatch workspace name:$ws3\"	:class \"$un$o3$f3\" \"\") (button :onclick \"hyprctl dispatch workspace name:$ws4\"	:class \"$un$o4$f4\"	\"󰉋\") (button :onclick \"hyprctl dispatch workspace name:$ws5\"	:class \"$un$o5$f5\" \"󰌨\" )  (button :onclick \"hyprctl dispatch workspace name:$ws6\"	:class \"$un$o6$f6\" \"󱉺\") (button :onclick \"hyprctl dispatch workspace name:$ws7\"	:class	\"$un$o7$f7\"	\"\") (button :onclick \"hyprctl dispatch workspace name:$ws8\"	:class	\"$un$o8$f8\"	\"󱥁\") (button :onclick \"hyprctl dispatch workspace name:$ws9\"	:class	\"$un$o9$f9\"	\"󰺵\") (button :onclick \"hyprctl dispatch workspace name:$ws0\"	:class	\"$un$o0$f0\"	\"\"))"

}

workspaces
tail -f /tmp/hypr/$HYPRLAND_INSTANCE_SIGNATURE/hyprland.log | while read -r; do 
  workspaces
done
