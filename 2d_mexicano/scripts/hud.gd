extends CanvasLayer

func update_score(value):
	$CoinLabel.text = "Monedas: " + str(value)
