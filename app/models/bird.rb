class Bird < ApplicationRecord
    validate :name,presence: true,uniqeness:true
end
def create
    bird = Bird.create(bird_params)
    if bird.valid?
      render json: bird, status: :created
    else
      render json: { errors: bird.errors }, status: :unprocessable_entity
    end
  end