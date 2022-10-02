class StudentsController < ApplicationController

    def index
        students=Student.all
        render json: students
    end

    def grades
        students=Student.all.order(grade: :desc)
        render json:students
    end

    def highest_grade
        student=Student.all.order(grade: :desc).limit(1).first
        render json:student
    end    

end

