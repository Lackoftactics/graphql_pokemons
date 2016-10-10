class PokemonFilter

  attr_reader :name, :trainer_name

  def initialize(args)
    @name = args['name']
    @trainer_name = args['trainer_name']
  end

  def scoped(scope = Pokemon.all)
    scope = append_name(scope)
    scope = append_trainer(scope)

    scope
  end


  private

  def append_name(scope)
    if name.present?
      scope = scope.where(name: name)
    end
    scope
  end

  def append_trainer(scope)
    if trainer_name.present?
      scope = scope.joins(:trainer).where(trainer: { name: trainer_name })
    end
    scope
  end
end
