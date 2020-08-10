class Baby < ApplicationRecord
    has_many :breastfeedings, dependent: :destroy

    def to_s 
        name
    end

    def total_breastfeeding
        breastfeedings.where("created_at >= :start_at AND created_at <= :end_date", {start_at: created_at, end_date: Time.now}).count
    end
   
    def quantity_breastfeeding
        breastfeedings.sum(:quantity)
     end

    def time_breastfeeding
        breastfeedings.sum(:duration)
     end

    # Cuantas veces a tomado pecho hoy ese niño 
     def breastfed_today 
        breastfeedings.where("created_at >= :start_at AND created_at <= :end_date", {start_at: Time.now.beginning_of_day, end_date: Time.now}).count
    end

    #  La fecha de la última vez que tomó pecho
    def last_time_breastfed
        if breastfeedings.count > 0
            breastfeedings.last.date.strftime("%d-%m-%Y / %H:%M")            
        end
    end

    # Cuánto tiempo ha tomado este día
    def breastfed_duration_today 
        breastfeedings.where("created_at >= :start_at AND created_at <= :end_date", {start_at: Time.now.beginning_of_day, end_date: Time.now}).sum(:duration)
   
    end

    # Cuanta cantidad ha tomado hoy
    def breastfed_quantity_today 
        breastfeedings.where("created_at >= :start_at AND created_at <= :end_date", {start_at: Time.now.beginning_of_day, end_date: Time.now}).sum(:quantity) 
    end
end