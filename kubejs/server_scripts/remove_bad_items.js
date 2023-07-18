//onEvent("recipes", event => {
//  event.remove({output: "spelunkery:compression_blast_miner"})
//  event.remove({output: "easy_villagers:iron_farm"})
//})

ServerEvents.recipes(event => {
  //event.remove({output: "spelunkery:compression_blast_miner"})
  event.remove({output: "easy_villagers:iron_farm"})
})
