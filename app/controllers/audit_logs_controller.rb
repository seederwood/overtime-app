class AuditLogsController < ApplicationController
  def index
    @audit_logs = AuditLog.order(:id).page(params[:page]).per(10)
    authorize @audit_logs
  end
end
