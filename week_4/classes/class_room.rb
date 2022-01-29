class ClassRoom
    @@id_auto = 0
    attr_accessor :name, :id

    def initialize(name)
        @name = name
        @id = @@id_auto
        @@id_auto +=1
    end

   
end