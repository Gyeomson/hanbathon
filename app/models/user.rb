class User < ActiveRecord::Base
    validates :name, :email, :university, :grade, :major,:id_number, :mobile, presence: { message: "필수항목을 입력하지 않았습니다." }
    validates :email, uniqueness: { message: "이미 존재합니다."}
    VALID_MOBILE_NUMBER = /\A010\-([1-9]{1})([0-9]{3})\-([0-9]{4})\z/
    validates :mobile, format: {with: VALID_MOBILE_NUMBER ,message: "형식에 맞지 않습니다."}, uniqueness: {  message: "이미 존재합니다."}
    # VALID_ID_NUMBER = /\A201([0-9]{5})\z/ , format: {with: VALID_ID_NUMBER, message: "형식에 맞지 않습니다."}
    validates :id_number, uniqueness: {  message: "이미 존재합니다."}
end
