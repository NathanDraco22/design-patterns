package main

import "fmt"

type TV struct {
	brandName string
	screen    string
	wide      int
}

// using struct
type TVFactory struct{}

func (this TVFactory) tvFromJsonMap(json map[string]interface{}) TV {
	return TV{
		brandName: json["brandName"].(string),
		screen:    json["screen"].(string),
		wide:      json["wide"].(int),
	}
}

// in indivual func
func tvFactoryFromJsonMap(json map[string]interface{}) TV {
	return TV{
		brandName: json["brandName"].(string),
		screen:    json["screen"].(string),
		wide:      json["wide"].(int),
	}
}

func main() {

	jsonMap := map[string]interface{}{"brandName": "LG", "screen": "OLED", "wide": 40}
	jsonMap2 := map[string]interface{}{"brandName": "Sony", "screen": "OLED", "wide": 32}

	tvInstance1 := TVFactory{}.tvFromJsonMap(jsonMap)
	tvInstance2 := tvFactoryFromJsonMap(jsonMap2)

	fmt.Println(tvInstance1)
	fmt.Println(tvInstance2)

}
