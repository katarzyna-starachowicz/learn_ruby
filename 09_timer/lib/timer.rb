class Timer
  attr_accessor :seconds
  
  def initialize
  	@seconds = 0
  end

  def time_string
    hours = @seconds/3600
    remainder = @seconds%3600
    sprintf("%02d:%02d:%02d", hours, remainder/60, remainder%60)
    # % służy do zamiany argumentów metody sprintf na łańcuch
    # 0 określa sposób oddzielania, żadnych znaków, żadnej przestrzeni
    # 2 określa szerokość pola (2 znaki) 
    # d Convert argument as a decimal number
  end

end