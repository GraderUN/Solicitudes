class EstudiantesController < ApplicationController
  

  # GET /todos/:todo_id/items
  #def index
   # json_response(@todo.items)
  #end

  # GET /todos/:todo_id/items/:id
  def index
    estudiante = Estudiante.find_by(id: params[:id])
    if estudiante.nil?
        render json: { error: 'su id es incorrecto' }, status: :forbidden
    else
        render json: { id: estudiante.id, nombre: estudiante.nombre }
    end
  end

  # POST
  def create
    #redirect_to root_url and return if not_authorized?
    estudiante = Estudiante.create(id: params[:id], nombre: params[:nombre])
    render json: { Registro_Correcto: 'Usuario registrado', id: estudiante.id, nombre: estudiante.nombre }
  end

  #def create
  #  user = User.find_by(email: params[:email])
   # if user&.authenticate(params[:password])
    #    token, exp = JsonWebToken.encode(user_id: user.id)
     #   render json: { token: token, exp: exp.strftime('%d-%m-%Y %H:%M'),
     #                  email: user.email }
  #  else
   #     render json: { errors: 'bad credentials' }, status: :forbidden
   # end
# end

  # POST /todos/:todo_id/items
 # def create
 #   @todo.items.create!(item_params)
 #   json_response(@todo, :created)
  #end

  # PUT /todos/:todo_id/items/:id
  #def update
  #  @item.update(item_params)
  #  head :no_content
  #end

  # DELETE /todos/:todo_id/items/:id
 # def destroy
 #   @item.destroy
 #   head :no_content
 # end
end
