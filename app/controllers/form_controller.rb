class FormController < Formotion::FormController 
include BW::KVO

  def initWithSomething
    @form = Formotion::Form.new({
      title: "",
      sections: [
      {
        rows: [ {
          title: "Project Name",
          key: :name,
          placeholder: "project name..",
          type: :string,
        }]
      },
      {
        title: "Some title",
        key: :some_type,
        select_one: true,
        footer: "Some footer",
        rows: [{
          title: "Test1",
          key: :test1,
          type: :check,
          value: true
        }, {
          title: "Test2",
          key: :test2,
          type: :check,
        }, {
          title: "Test3",
          key: :test3,
          type: :check,
        }]
      },
        #comment this section for it to work
      {
        title: "Some title",
        key: :some_type,
        select_one: true,
        footer: "Some footer",
        rows: [{
          title: "Test1",
          key: :test1,
          type: :check,
          value: true
        }, {
          title: "Test2",
          key: :test2,
          type: :check,
        }, {
          title: "Test3",
          key: :test3,
          type: :check,
        }]
      },



    ]#ends section
    })#ends new

    self.initWithForm(form)

    self
   
  end

  def submit
    data = @form.submit
  end

  def viewDidLoad
    super
    self.title = "App Name"
  end

end

