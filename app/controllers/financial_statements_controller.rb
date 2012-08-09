class FinancialStatementsController < ApplicationController
  # GET /financial_statements
  # GET /financial_statements.json
  def index
    @financial_statements = FinancialStatement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @financial_statements }
    end
  end

  # GET /financial_statements/1
  # GET /financial_statements/1.json
  def show
    @financial_statement = FinancialStatement.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @financial_statement }
    end
  end

  # GET /financial_statements/new
  # GET /financial_statements/new.json
  def new
    @financial_statement = FinancialStatement.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @financial_statement }
    end
  end

  # GET /financial_statements/1/edit
  def edit
    @financial_statement = FinancialStatement.find(params[:id])
  end

  # POST /financial_statements
  # POST /financial_statements.json
  def create
    @financial_statement = FinancialStatement.new(params[:financial_statement])

    respond_to do |format|
      if @financial_statement.save
        format.html { redirect_to @financial_statement, notice: 'Financial statement was successfully created.' }
        format.json { render json: @financial_statement, status: :created, location: @financial_statement }
      else
        format.html { render action: "new" }
        format.json { render json: @financial_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /financial_statements/1
  # PUT /financial_statements/1.json
  def update
    @financial_statement = FinancialStatement.find(params[:id])

    respond_to do |format|
      if @financial_statement.update_attributes(params[:financial_statement])
        format.html { redirect_to @financial_statement, notice: 'Financial statement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @financial_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /financial_statements/1
  # DELETE /financial_statements/1.json
  def destroy
    @financial_statement = FinancialStatement.find(params[:id])
    @financial_statement.destroy

    respond_to do |format|
      format.html { redirect_to financial_statements_url }
      format.json { head :no_content }
    end
  end
end
