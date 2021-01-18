1. Ở file CupForm.qml

Vì mỗi phần milk đều có phần chữ giải thích bên cạnh 
=> Nên dùng hình ảnh của từng phần sẽ dễ làm hơn


        Item{
            id: coffee
            x: 12
            width: 457
            height: root.coffeeAmount * 40
            anchors.bottom: background.bottom
            clip: true

            Image{
                anchors.bottom: parent.bottom
                source: "images/cup structure/liquids/liquid_coffee.png"
            }
        }
		
Phải dùng Item rồi mới dùng Image => Lý do dùng Item rồi mới dùng Image ?
